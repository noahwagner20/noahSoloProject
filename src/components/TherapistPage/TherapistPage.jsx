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
  const store = useSelector(store => store)
  const quests = useSelector(store => store.questReducer);
  const therapistQuests = quests.filter(quests => quests.trader_id === 2)

  useEffect(() => {
    dispatch({ type: 'FETCH_QUESTS', payload: quests.name && quests.description})
  })
  return (
        <div>
          <h2>Therapist Quest Line</h2>
          {therapistQuests.length > 0 &&
            <table>
              <thead>
                <tr>
                  <th>Quest Name</th>
                  <th>Description</th>
                </tr>
              </thead>
              <tbody>
                {therapistQuests.map(quests =>
                  <tr key={quests.id}>
                  <td>{quests.name}</td>
                  <td>{quests.description}</td>
                </tr>)}
              </tbody>
            </table>
          }
        </div>
  );
}
          
export default TherapistPage;
