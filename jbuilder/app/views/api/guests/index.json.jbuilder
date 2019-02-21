# json.array! @guests do |guest| 
#   json.name guest.name
#   json.age guest.age 
# end 

json.array! @guests, :name, :age 