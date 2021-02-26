import axios from 'axios';
import { put, takeLatest, } from 'redux-saga/effects';

//makes get request to get all games from the DB
function* getAllQuests() {
    try{
    console.log("in get all quests")
    const games = yield axios.get('/api/quests')
    yield put ({type: 'SET_QUESTS', payload: games.data})
    }catch{
        console.log('error in get ')
    }
}

// listener for actions in this saga
function* getGamesSaga() {
    yield takeLatest("GET_GAMES", getAllQuests);
    
  }

  export default getGamesSaga;