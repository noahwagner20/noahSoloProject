const questReducer = (state = [], action) => {
    switch (action.type) {
      case 'SET_QUESTS':
        return action.payload;
      default:
        return state;
    }
  };
  
  export default questReducer;