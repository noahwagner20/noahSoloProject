import React from 'react';
import { useSelector, useDispatch } from "react-redux"
import { useEffect, useState } from 'react'
import { useHistory } from "react-router-dom";
// This is one of our simplest components
// It doesn't have local state
// It doesn't dispatch any redux actions or display any part of redux state
// or even care what the redux state is

function PraporPage() {
  
  const dispatch = useDispatch();
  const store = useSelector(store => store)
  const quests = useSelector(store => store.quests);

  useEffect(() => {
    dispatch({ type: 'FETCH_QUESTS', payload: quests.name && quests.description})
  })
  return (
        <div>
          <h2>Prapor Quest Line</h2>
          {quests.questsReducer.length > 0 &&
            <table>
              <thead>
                <tr>
                  <th>Quest Name</th>
                  <th>Description</th>
                </tr>
              </thead>
              <tbody>
                {quests.questsReducer.map(quests =>
                  <tr key={category.id}>
                  <td>{quests.name}</td>
                  <td>{quests.description}</td>
                </tr>)}
              </tbody>
            </table>
          }
        </div>
  );
}
          
export default PraporPage;
