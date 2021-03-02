const deleteReducer = (state = [], action) => {
    switch (action.type) {
      case 'DELETE_QUESTS':
        return action.payload;
      default:
        return state;
    }
  };

  export default deleteReducer;