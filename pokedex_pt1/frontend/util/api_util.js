export const fetchAllPokemon = () => {
  return $.ajax({
    type: 'get',
    dataType: 'json',
    url: '/api/pokemon'
  });
};
