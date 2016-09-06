# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#*********************
#   when creating record, please use find_or_create_by! or create! so that validations will fail!
#*********************

countries_data = [
  { name: "USA" },
  { name: "France" },
  { name: "Italy" },
  { name: "Australia" }
  ]

countries_data.each do |country_data|
  Country.find_or_create_by!(country_data)
end

usa = Country.find_by( name: "USA" )
france = Country.find_by( name: "France" )
italy = Country.find_by( name: "Italy" )
australia = Country.find_by( name: "Australia" )

australian_states_data = [
  { name: "New South Wales", country_id: australia.id },
  { name: "Queensland", country_id: australia.id },
  { name: "South Australia", country_id: australia.id },
  { name: "Tasmania", country_id: australia.id },
  { name: "Victoria", country_id: australia.id },
  { name: "Western Australia", country_id: australia.id }
]

australian_states_data.each do |state_data|
  State.find_or_create_by!(state_data)
end

usa_states_data = [
  { name: "Alabama", country_id: usa.id },
  { name: "Alaska", country_id: usa.id },
  { name: "Arizona", country_id: usa.id },
  { name: "Arkansas", country_id: usa.id },
  { name: "California", country_id: usa.id },
  { name: "Colorado", country_id: usa.id },
  { name: "Connecticut", country_id: usa.id },
  { name: "DC", country_id: usa.id },
  { name: "Delaware", country_id: usa.id },
  { name: "Florida", country_id: usa.id },
  { name: "Georgia", country_id: usa.id },
  { name: "Hawaii", country_id: usa.id },
  { name: "Idaho", country_id: usa.id },
  { name: "Illinois", country_id: usa.id },
  { name: "Indiana", country_id: usa.id },
  { name: "Iowa", country_id: usa.id },
  { name: "Kansas", country_id: usa.id },
  { name: "Kentucky", country_id: usa.id },
  { name: "Louisiana", country_id: usa.id },
  { name: "Maine", country_id: usa.id },
  { name: "Maryland", country_id: usa.id },
  { name: "Massachusetts", country_id: usa.id },
  { name: "Michigan", country_id: usa.id },
  { name: "Minnesota", country_id: usa.id },
  { name: "Mississippi", country_id: usa.id },
  { name: "Missouri", country_id: usa.id },
  { name: "Montana", country_id: usa.id },
  { name: "Nebraska", country_id: usa.id },
  { name: "Nevada", country_id: usa.id },
  { name: "New Hampshire", country_id: usa.id },
  { name: "New Jersey", country_id: usa.id },
  { name: "New Mexico", country_id: usa.id },
  { name: "New York", country_id: usa.id },
  { name: "North Carolina", country_id: usa.id },
  { name: "North Dakota", country_id: usa.id },
  { name: "Ohio", country_id: usa.id },
  { name: "Oklahoma", country_id: usa.id },
  { name: "Oregon", country_id: usa.id },
  { name: "Pennsylvania", country_id: usa.id },
  { name: "Rhode Island", country_id: usa.id },
  { name: "South Carolina", country_id: usa.id },
  { name: "South Dakota", country_id: usa.id },
  { name: "Tennessee", country_id: usa.id },
  { name: "Texas", country_id: usa.id },
  { name: "Utah", country_id: usa.id },
  { name: "Vermont", country_id: usa.id },
  { name: "Virginia", country_id: usa.id },
  { name: "Washington", country_id: usa.id },
  { name: "West Virginia", country_id: usa.id },
  { name: "Wisconsin", country_id: usa.id },
  { name: "Wyoming", country_id: usa.id }
  ]
  
usa_states_data.each do |state_data|
  State.find_or_create_by!(state_data)
end

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

red_wine = WineType.find_by( name: 'Red wine' )
white_wine = WineType.find_by( name: 'White wine' )
sparkling_rose = WineType.find_by( name: 'Sparkling rose wine' )

tuscany = WineRegion.find_or_create_by!( name: 'Tuscany', country_id: italy.id )
bordeaux = WineRegion.find_or_create_by!( name: 'Bordeaux', country_id: france.id )
champagne = WineRegion.find_or_create_by!( name: 'Champagne', country_id: france.id )
north_east_victoria = WineRegion.find_or_create_by!( name: 'North East Victoria', country_id: australia.id )

washington = State.find_or_create_by!( name: 'Washington')
victoria = State.find_or_create_by!( name: 'Victoria' )

cabernet_sauvignon = Varietal.find_or_create_by!( name: 'Cabernet Sauvignon', is_black: true )
canaiolo = Varietal.find_or_create_by!( name: 'Canaiolo', is_black: true )
chardonnay = Varietal.find_or_create_by!( name: 'Chardonnay', is_black: false )
merlot = Varietal.find_or_create_by!( name: 'Merlot', is_black: true )
riesling = Varietal.find_or_create_by!( name: 'Riesling', is_black: false )
sangiovese = Varietal.find_or_create_by!( name: 'Sangiovese', is_black: true )
syrah = Varietal.find_or_create_by!( name: 'Syrah', is_black: true )

chianti_blend = Blend.find_or_create_by!( name: 'Chianti' )
chianti_blend.varietals << [  sangiovese, canaiolo, cabernet_sauvignon, merlot, syrah ]

chianti_appellation = Appellation.find_or_create_by!( name: 'Chianti Classico', wine_region_id: tuscany.id )
bcdf_appellation = Appellation.find_or_create_by!( name: 'Bordeaux Côtes de Francs', wine_region_id: bordeaux.id )
brunello_di_montalcino_appellation = Appellation.find_or_create_by!( name: 'Brunello di Montalcino', wine_region_id: tuscany.id )
ancient_lakes_appellation = Appellation.find_or_create_by!( name: 'Ancient Lakes', state_id: washington.id )
champagne_appellation = Appellation.find_or_create_by!( name: 'Champagne', wine_region_id: champagne.id )
beechworth_appellation = Appellation.find_or_create_by!( name: 'Beechworth', wine_region_id: north_east_victoria.id )

chianti_appellation.blends << chianti_blend
brunello_di_montalcino_appellation.varietals << Varietal.find_or_create_by!( name: 'Sangiovese', is_black: true )

Wine.find_or_create_by!( name: 'Ruffino Riserva Ducale', country_id: italy.id, wine_type_id: red_wine.id, wine_region: tuscany, appellation: chianti_appellation )
Wine.find_or_create_by!( name: 'Argiano Brunello di Montalcino', country_id: italy.id, wine_type_id: red_wine.id, wine_region: tuscany, appellation: brunello_di_montalcino_appellation )
Wine.find_or_create_by!( name: 'Chàteau les Charmes-Godard', country_id: france.id, wine_type_id: red_wine.id, wine_region: bordeaux, appellation: bcdf_appellation )
Wine.find_or_create_by!( name: 'Kung Fu Girl', country_id: usa.id, wine_type_id: white_wine.id, state: washington, appellation: ancient_lakes_appellation, producer: 'Charles Smith' )
Wine.find_or_create_by!( name: 'Boizel', country_id: france.id, wine_type_id: sparkling_rose.id, wine_region: champagne, appellation: champagne_appellation ) 
Wine.find_or_create_by!( name: "Sophie's Block", country_id: australia.id, wine_type_id: white_wine.id, wine_region: north_east_victoria, appellation: beechworth_appellation, producer: "Piano Piano")
