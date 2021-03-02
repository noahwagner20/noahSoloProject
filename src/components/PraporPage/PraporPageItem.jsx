import React from 'react';
import axios from 'axios';

function PraporPageItem(props) {

  const deleteQuest = () => {
    axios({
      method: 'DELETE',
      url: `/quests/${props.quest.id}`,
    })
    .then(()=> { 
      props.refreshQuests() 
    }).catch( error => { console.log('error on delete: ', error) })
  }

  return (
    <tr>
      <td>{props.quests.name}</td>
      <td>
        <button onClick={deleteQuest}>DELETE</button>
      </td>
    </tr>
  );
}

export default PraporPageItem;