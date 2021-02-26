const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();

// /**
//  * GET route template
//  */
// router.get('/', (req, res) => {
//   // GET route code here
// });


router.get('/', (req, res) => {
    const query = `SELECT * FROM quests`;
    pool.query(query)
        .then(result => {
            res.send(result.rows)
        }).catch(err => {
            console.log('Error in get all quests', err)
            res.sendStatus(500)
        })
});

router.get('/:trader_id', (req, res) => {
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



// /**
//  * POST route template
//  */
// router.post('/', (req, res) => {
//   // POST route code here
// });

module.exports = router;
