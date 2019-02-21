# { "pokemon": {...}, "items": {...} } 

# @poke 

json.pokemon do 
  json.extract! @poke, 
  :id, :name, :attack, :defense, 
  :moves, :poke_type, :image_url # :item_ids -- same as line #9 (this is an Active Record method) 
  json.item_ids @poke.items.ids 
end 

json.items do 
  @poke.items.each do |item| 
    json.set! item.id do 
      json.extract! item, :id, :name, :pokemon_id, :price, :happiness, :image_url 
    end 
  end 
end 
