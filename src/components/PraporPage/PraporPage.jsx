import React from 'react';
import { useSelector, useDispatch } from "react-redux"
import { useEffect, useState } from 'react'
import { useHistory } from "react-router-dom";



// import { makeStyles } from '@material-ui/core/styles';
// import Table from '@material-ui/core/Table';
// import TableBody from '@material-ui/core/TableBody';
// import TableCell from '@material-ui/core/TableCell';
// import TableContainer from '@material-ui/core/TableContainer';
// import TableHead from '@material-ui/core/TableHead';
// import TableRow from '@material-ui/core/TableRow';
// import Paper from '@material-ui/core/Paper';

import './PraporPage.css';

// const useStyles = makeStyles({
//   table: {
//     minWidth: 650,
//   },
// });

function PraporPage() {
  const history = useHistory();

  
  const dispatch = useDispatch();
  const store = useSelector(store => store)
  const quests = useSelector(store => store.questReducer);
  const complete = useSelector(store => store.questReducer);
  const praporQuests = quests.filter(quests => quests.tid === 1)
  const completeQuest = (id) => {
    console.log(id)
    dispatch({ type: 'COMPLETE_QUEST', payload: id })
}
  useEffect(() => {
    dispatch({ 
      type: 'FETCH_QUESTS', 
      payload: 
        quests.qid &&
        quests.name &&
        quests.description &&
        quests.trader_id &&
        complete.complete})
  })
  return (
        <div>
          <h2>Prapor Quest Line</h2>
          {praporQuests.length > 0 &&
            <table>
              <thead>
                <tr>
                  <th>Quest Name</th>
                  <th>Description</th>
                  <th>Completed</th>
                </tr>
              </thead>
              <tbody>
                {praporQuests.map(quests =>
                  <tr key={quests.id}>
                  <td>{quests.name}</td>
                  <td>{quests.description}</td>
                  <td onClick={() => completeQuest(quests.qid)}></td>
                </tr>)}
              </tbody>
            </table>
          }
        </div>

  );
}
          
export default PraporPage;