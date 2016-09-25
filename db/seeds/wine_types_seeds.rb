# Wine types seed data
wine_types_data = [
  { name: "Red wine" },
  { name: "White wine" },
  { name: "Rose wine" },
  { name: "Sparkling red wine" },
  { name: "Sparkling white wine" },
  { name: "Sparkling rose wine" },
  { name: "Fortified wine" },
  { name: "Dessert wine" }
]

wine_types_data.each do |type_data|
  WineType.find_or_create_by!( type_data )
end