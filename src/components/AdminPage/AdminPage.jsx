import React from 'react';
import { useSelector, useDispatch } from "react-redux"
import { useEffect, useState } from 'react'
import { useHistory } from "react-router-dom";
import axios from 'axios';


function AdminPage(props) {
  
  const dispatch = useDispatch();
  const store = useSelector(store => store)
  const quests = useSelector(store => store.questReducer);
  const praporQuests = quests.filter(quests => quests.trader_id === 1)

  let [newQuest, setNewQuest] = useState('');
  let [newDescription, setNewDescription] = useState('');

  const deleteQuest = () => {
    axios({
      method: 'DELETE_QUEST',
      url: `/api/quests/${props.quest.id}`,
    })
    .then(()=> { 
      props.refreshQuests() 
    }).catch( error => { console.log('error on delete: ', error) })
  }

  const handleSubmit = event => {
    event.preventDefault();
    dispatch({
      type: 'ADD_QUEST',
      payload: newQuest && newDescription
    });
    setNewQuest('');
  };

  useEffect(() => {
    dispatch({ type: 'FETCH_QUESTS', payload: quests.name && quests.description})
  })
  return (
        <div>
           <h2>Admin Edit/Delete</h2>
           <form onSubmit={handleSubmit}>
        <input 
        type="text" 
        name="name" 
        placeholder="Enter Name"
        value={newQuest}
        onChange={event => setNewQuest(event.target.value)} />
         <input 
        type="text" 
        name="name" 
        placeholder="Enter Description"
        value={newDescription}
        onChange={event => setNewDescription(event.target.value)} />
        <button>Add Quest</button>
        </form>
          {quests.length > 0 &&
            <table>
              <thead>
                <tr>
                  <th>Quest Name</th>
                  <th>Description</th>
                  <th>Trader</th>
                  <th>Delete?</th>
                </tr>
              </thead>
              <tbody>
                {quests.map(quests =>
                  <tr key={quests.id}>
                  <td>{quests.name}</td>
                  <td>{quests.description}</td>
                  <td>{quests.trader_id}</td>
                  <td><button onClick={()=>deleteQuest(quests.id)}>Delete</button></td>
                </tr>)}
              </tbody>
            </table>
          }
        </div>
 );
}
export default AdminPage;
