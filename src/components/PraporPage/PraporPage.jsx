import React from 'react';

// This is one of our simplest components
// It doesn't have local state
// It doesn't dispatch any redux actions or display any part of redux state
// or even care what the redux state is

function PraporPage() {

  const history = useHistory();
  const dispatch = useDispatch();
  const store = useSelector(store => store);
  useEffect(() => {
      dispatch({ type: 'GET_QUESTS' });
  }, []);

    const praporsQuests = store.quests.filter(quests => quests.trader_id === store.quests.id)

    return (
      <>
          <p>Prapor Quest Line</p>
          {praporsQuests.map(quests => {
              return (
                  <div className="gameCard" key={quests.id}>
                      <p>{quests.name}</p><br />
                      <img src={quests.description} /> <br/>
                  </div> 
          )
        })}

    </>
)
}
          
          


export default PraporPage;
