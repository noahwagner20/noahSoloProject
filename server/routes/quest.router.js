const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();

const {
    rejectUnauthenticated,
  } = require('../modules/authentication-middleware');

// /**
//  * GET route template
//  */
// router.get('/', (req, res) => {
//   // GET route code here
// });

router.get('/:trader_id', rejectUnauthenticated, (req, res) => {
    const trader_id = req.params.trader_id
    const query = `SELECT * FROM quests WHERE trader_id = ${trader_id}`;
    pool.query(query)
        .then(result => {
            res.send(result.rows)
            console.log(req.body)
        }).catch(err => {
            console.log('Error in get all quests', err)
            res.sendStatus(500)
        })
});
router.post('/', rejectUnauthenticated, (req, res) => {
    console.log('In quest POST with', req.body);

    const questName = req.body.questName;
    const questDescription = req.body.questDescription;

    const sqlText = `INSERT INTO "quests" ("name") ("description") VALUES ($1) ($2);`;

    pool.query(sqlText, [questName] && [questDescription]).then(() => {
        res.sendStatus(201);
    }).catch(err => {
        console.log('Error making query', err);
        res.sendStatus(500);
    });
});
//get request to get all quests joined with completed 
//include all quests even if they havent been completed
router.get('/', rejectUnauthenticated, (req, res) => {
    const query = `SELECT 
    quests.id AS QID, 
    quests.name, 
    quests.description, 
    quests.trader_id AS TID,
    completion.complete
        FROM 
         quests 
         LEFT JOIN completion 
         ON (completion.quest_id = quests.id)
         LEFT JOIN traders
         ON (traders.id = quests.trader_id)
         ORDER BY quests.id;`;
    pool.query(query)
        .then(result => {
            res.send(result.rows)
        }).catch(err => {
            console.log('Error in get all quests', err)
            res.sendStatus(500)
        })
});

router.put('/complete/:id', rejectUnauthenticated, (req, res) => { 
    console.log(req.body)
   const queryText = `INSERT INTO completion ("user_id", "complete", "quest_id")
   VALUES ($1, $2, $3)`;

    pool.query(queryText, [req.user_id, true, req.body.quest_id])
    .then(() => {
        res.sendStatus(200);
    }).catch(err => {
        console.log('error in completed', err)
        res.sendStatus(500);
    })
})

router.delete('/:id', rejectUnauthenticated, (req, res) => {
    id = req.params.id;
    const sqlText = `DELETE FROM "quests" WHERE "id" = $1;`;

    res.sendStatus(200);
    pool.query(sqlText, [id]).then(() => {
        res.sendStatus(204);
    }).catch(err => {
        console.log('Error making query', err);
        res.sendStatus(500);
    });
});


//delete request to uncomplete the quest by completion id conditionally render

//put request
// /**
//  * POST route template
//  */
// router.post('/', (req, res) => {
//   // POST route code here
// });

module.exports = router;
