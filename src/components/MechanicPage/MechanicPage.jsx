import React from 'react';
import { useSelector, useDispatch } from "react-redux"
import { useEffect, useState } from 'react'
import { useHistory } from "react-router-dom";
// This is one of our simplest components
// It doesn't have local state
// It doesn't dispatch any redux actions or display any part of redux state
// or even care what the redux state is


function TherapistPage() {
  
  const dispatch = useDispatch();
  const quests = useSelector(store => store.questReducer);
  const complete = useSelector(store => store.questReducer);
  const mechanicQuests = quests.filter(quests => quests.tid === 5)

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
    <h2>Mechanic Quest Line</h2>
    {mechanicQuests.length > 0 &&
      <table>
        <thead>
          <tr>
            <th>Quest Name</th>
            <th>Description</th>
            <th>Completed</th>
          </tr>
        </thead>
        <tbody>
          {mechanicQuests.map(quests =>
            <tr key={quests.id}>
            <td>{quests.name}</td>
            <td>{quests.description}</td>
            <td>{quests.complete}</td>
          </tr>)}
        </tbody>
      </table>
    }
  </div>

);
}
          
export default TherapistPage;
