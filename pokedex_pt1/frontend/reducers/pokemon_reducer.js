import { RECEIVE_ALL_POKEMON } from '../actions/pokemon_actions'; 

const pokemonReducer = (state = {}, action) => {
  switch(action.type) {
    case RECEIVE_ALL_POKEMON:
      const newState = {}; 
      action.pokemon.keys.forEach(key => {
        newState[key] = action.pokemon[key]; 
      }); 
      return newState; 
    default:
      return state; 
  }
}; 

export default pokemonReducer; 