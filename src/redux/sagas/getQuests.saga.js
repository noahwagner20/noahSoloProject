import axios from 'axios';
import { put, takeLatest, } from 'redux-saga/effects';

//makes get request to get all quests from the DB
function* getAllQuests() {
    try{
    console.log("in get all quests")
    const quests = yield axios.get('/api/quests')
    yield put ({type: 'SET_QUESTS', payload: quests.data})
    }catch{
        console.log('error in get ')
    }
}

function* deleteQuests() {
    try{
        console.log("Deleting Quest")
    yield put ({type: 'DELETE_QUESTS', payload: quests.id})
    } catch {
        console.log('error in delete')
    }
}

// listener for actions in this saga
function* getQuestsSaga() {
    yield takeLatest("GET_QUESTS", getAllQuests);
    yield takeLatest("DELETE_QUESTS", deleteQuests);
  }



  export default getQuestsSaga;