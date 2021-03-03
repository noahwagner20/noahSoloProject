import axios from 'axios';
import { put, takeLatest, takeEvery} from 'redux-saga/effects';

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
function* makeComplete(action) {
    console.log('complete quest: ', action.payload)
    yield axios.put(`/api/quests/complete/${action.payload}`)
}

// listener for actions in this saga
function* getQuestsSaga() {
    yield takeLatest("GET_QUESTS", getAllQuests);
    yield takeLatest("DELETE_QUESTS", deleteQuests);
    yield takeLatest("COMPLETE_QUEST", makeComplete);
  }


  export default getQuestsSaga;