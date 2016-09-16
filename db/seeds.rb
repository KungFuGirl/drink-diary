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

# seed some countries
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

# https://en.wikipedia.org/wiki/List_of_wine-producing_regions#Australia
australian_wine_regions_data = {
  "South Australia": { 
    "Barossa": [
      "Barossa Valley",
      "Eden Valley"
    ],
    "Far North": [
      "Southern Flinders Ranges"
    ],
    "Fleurieu": [
      "Currency Creek",
      "Kangaroo Island",
      "Langhorne Creek",
      "McLaren Vale",
      "Southern Fleurieu"
    ],
    "Limestone Coast": [
      "Coonawarra",
      "Mount Benson",
      "Mount Gambier",
      "Padthaway",
      "Robe",
      "Wrattonbully"
    ],
    "Lower Murray": [
      "Riverland"
    ],
    "Mount Lofty Ranges": [
      "Adelaide Hills",
      "Adelaide Plains",
      "Clare Valley"
    ],
    "The Peninsulas": []
  },
  "New South Wales": {
    "Big Rivers": [],
    "Hunter Valley": [],
    "Central Ranges": [],
    "Northern Rivers": [],
    "Northern Slopes": [],
    "South Coast": [],
    "Southern NSW": []
  },
  "Victoria": {
    "Central Victoria": [
      "Bendigo",
      "Goulburn Valley",
      "Heathcote",
      "Strathbogie Ranges",
      "Upper Goulburn"
    ],
    "Gippsland": [],
    "NE Victoria": [
      "Alpine Valleys",
      "Beechworth",
      "Glenrowan",
      "King Valley",
      "Rutherglen"
    ],
    "NW Victoria": [
      "Murray Darling",
      "Swan Hill"
    ],
    "Port Phillip": [
      "Geelong",
      "Macedon Ranges",
      "Mornington Peninsula",
      "Sunbury",
      "Yarra Valley"
    ],
    "Western Victoria": [
      "Grampians",
      "Henty",
      "Pyrenees"
    ]
  },
  "Western Australia": {
    "Greater Perth": [
      "Peel",
      "Perth Hills",
      "Swan Valley"
    ],
    "SW Australia": [
      "Blackwood Valley",
      "Geographe",
      "Great Southern",
      "Manjimup",
      "Margaret River",
      "Pemberton"
    ]
  },
  "Queensland": {
    "Granite Belt": [],
    "South Burnett": []
  },
  "Tasmania": {
    "Coal River": [],
    "Derwent Valley": [],
    "East Coast": [],
    "North West": [],
    "Pipers River": [],
    "Southern": [],
    "Tamar Valley": []
  }
}

# add all australian states, wine regions, and appellations
australian_wine_regions_data.each do |state, regions|
  aus_state = State.find_or_create_by!({ name: state, country: australia })
  regions.each do |region, appellations|
    aus_region = WineRegion.find_or_create_by!({ name: region, country: australia, state: aus_state })
    appellations.each do |appellation|
      Appellation.find_or_create_by!({ name: appellation, state: aus_state, wine_region: aus_region})
    end

  end
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

# Wine types variables
red_wine = WineType.find_by( name: 'Red wine' )
white_wine = WineType.find_by( name: 'White wine' )
sparkling_rose = WineType.find_by( name: 'Sparkling rose wine' )


# French wine data. All wine regions and appellations.
france_wine_data_array = [
# ??????? Côtes de Toul from Eastern France

  # Alsace wine region:
  { "Alsace": 
    [ "Alsace",
      "Alsace Grand Cru",

    ] },
  # Beaujolais wine region: 
  { "Beaujolais": 
    [ "Beaujolais",
      "Beaujolais-Villages",
      "Brouilly",
      "Chénas",
      "Chiroubles",
      "Côte de Brouilly",

    ] },
  # Bordeaux wine region: 
  { "Bordeaux": 
    [ "Barsac",
      "Blaye",
      "Bordeaux",
      "Bordeaux clairet",
      "Bordeaux Côtes de Francs",
      "Bordeaux Haut-Benauge",
      "Bordeaux moelleux",
      "Bordeaux rosé",
      "Bordeaux sec",
      "Bordeaux supérieur",
      "Cadillac",
      "Canon Fronsac",
      "Cérons",
      "Côtes de Blaye",
      "Côtes de Bordeaux Saint-Macaire",
      "Côtes de Bourg",
      "Côtes de Castillon",


    ] },
  # Bugey small wine regions outside any major ones
  { "Bugey": 
    [ "Bugey",

    ]
  }
  # Burgundy wine region: 
  { "Burgundy": 
    [ "Aloxe-Corton",
      "Auxey-Duresses",
      "Bâtard-Montrachet",
      "Beaune",
      "Bienvenues-Bâtard-Montrachet",
      "Blagny",
      "Bonnes-Mares",
      "Bourgogne",
      "Bourgogne Aligoté",
      "Bourgogne Clairet",
      "Bourgogne Clairet Côte Chalonnaise",
      "Bourgogne Coulanges-la-Vineuse",
      "Bourgogne Côte Saint-Jacques",
      "Bourgogne Coulanges-la-Vineuse",
      "Bourgogne Côtes d'Auxerre",
      "Bourgogne Côtes du Couchois",
      "Bourgogne Epineuil",
      "Bourgogne Grand Ordinaire",
      "Bourgogne Hautes-côtes de Beaune",
      "Bourgogne Hautes-côtes de Nuits",
      "Bourgogne La Chapelle Notre-Dame",
      "Bourgogne le Chapitre",
      "Bourgogne Montrecul",
      "Bourgogne Mousseux",
      "Bourgogne Ordinaire",
      "Bourgogne Passe-tout-grains",
      "Bourgogne Vézelay",
      "Bourgogne rosé,"
      "Bouzeron",
      "Chablis",
      "Chablis Grand Cru",
      "Chablis Premier Cru",
      "Chambertin",
      "Chambertin-Clos-de-Beze",
      "Chambolle-Musigny",
      "Chapelle-Chambertin",
      "Charlemagne",
      "Charmes-Chambertin",
      "Chassagne-Montrachet",
      "Chevalier-Montrachet",
      "Chorey-les-Beaune",
      "Clos des Lambrays",
      "Clos de la Roche",
      "Clos de Tart",
      "Clos de Vougeot",
      "Clos Saint-Denis",
      "Corton",
      "Corton-Charlemagne",
      "Côte de Beaune",
      "Côte de Beaune-Villages",
      "Côte de Nuits-villages",
      "Côtes du Forez",


    ] },
  # Champagne wine region:
  { "Champagne": 
    [ "Champagne",
      "Coteaux Champenois",

    ] },
  # Languedoc-Roussillon wine region:
  { "Languedoc-Roussillon": 
    [ "Banyuls",
      "Banyuls Grand Cru",
      "Blanquette de Limoux",
      "Blanquette méthode ancestrale",
      "Cabardes",
      "Clairette de Bellegarde",
      "Clairette du Languedoc",
      "Collioure",
      "Corbieres",
      "Coteaux du Languedoc",
      "Côtes de la Malepere",

    ] },
  # Loire wine region: 
  { "Loire": 
    [ "Anjou",
      "Anjou-Coteaux de la Loire",
      "Anjou-Gamay",
      "Anjou mousseux",
      "Anjou Villages",
      "Anjou Villages Brissac",
      "Bonnezeaux",
      "Bourgueil",
      "Cabernet d'Anjou",
      "Cabernet de Saumur",
      "Chaume",
      "Cheverny",
      "Chinon",
      "Côte Roannaise",
      "Coteaux de l'Aubance",
      "Coteaux du Giennois",
      "Coteaux du Layon",
      "Coteaux du Loir",
      "Coteaux de Saumur",
      "Coteaux du Vendômois",

    ] },
  # Small wine area around city of Lion
  { "Lyonnais": [ "Coteaux du Lyonnais" ] },
  # Provence wine region: 
  { "Provence": 
    [ "Bandol",
      "Bellet",
      "Cassis",
      "Coteaux d'Aix-en-Provence",
      "Coteaux de Pierrevert",
      "Coteaux Varois",
      "Côtes de Provence",

    ] },

  # Rhone wine region: 
  { "Rhône": 
    [ "Beaumes de Venise",
      "Château-Grillet",
      "Châteauneuf-du-Pape",
      "Châtillon-en-Diois",
      "Clairette de Die",
      "Condrieu",
      "Cornas",
      "Costières de Nîmes",
      "Côte-Rôtie",
      "Coteaux de Die",
      "Coteaux du Tricastin",

    ] },
  # Jura wine region:
  { "Jura": 
    [ "Arbois",
      "Château-Chalon"

    ] },
  # Corsica wine region:
  { "Corsica": 
    [ "Ajaccio",
      "Corse",

    ] },
  # Savoie wine region:
  { "Savoie": [

    ] },
  # South-West of France:
  { "South-West France": 
    [ "Béarn",
      "Bergerac",
      "Bergerac sec",
      "Bergerac rosé",
      "Buzet",
      "Cahors",
      "Coteaux du Quercy",
      "Côtes de Bergerac",
      "Côtes de Bergerac Blanc",
      "Côtes de Duras",
      "Côtes de Millau",
      "Côtes de Montravel",

    ] }
]

france_wine_data_array.each do |data_array|
  data_array.each do | region_name, appellations_array |
    wine_region = WineRegion.find_or_create_by!( { name: region_name, country: france} )  
    appellations_array.each do |appellation_name|
      Appellation.find_or_create_by!({ name: appellation_name, wine_region: wine_region})
    end
  end
end

tuscany = WineRegion.find_or_create_by!( name: 'Tuscany', country_id: italy.id )
bordeaux = WineRegion.find_or_create_by!( name: 'Bordeaux', country_id: france.id )
champagne = WineRegion.find_or_create_by!( name: 'Champagne', country_id: france.id )
#north_east_victoria = WineRegion.find_or_create_by!( name: 'North East Victoria', country_id: australia.id )

washington = State.find_or_create_by!( name: 'Washington')
victoria = State.find_or_create_by!( name: 'Victoria' )

# Varietals data sample
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
#beechworth_appellation = Appellation.find_or_create_by!( name: 'Beechworth', wine_region: WineRegion.find_by(north_east_victoria.id )
beechworth_appellation = Appellation.find_or_create_by!( name: 'Beechworth', wine_region: WineRegion.find_by(name: "NE Victoria"), state: State.find_by(name: "Victoria"))

chianti_appellation.blends << chianti_blend
brunello_di_montalcino_appellation.varietals << Varietal.find_or_create_by!( name: 'Sangiovese', is_black: true )

Wine.find_or_create_by!( name: 'Ruffino Riserva Ducale', country_id: italy.id, wine_type_id: red_wine.id, wine_region: tuscany, appellation: chianti_appellation, blend: chianti_blend )
Wine.find_or_create_by!( name: 'Argiano Brunello di Montalcino', country_id: italy.id, wine_type_id: red_wine.id, wine_region: tuscany, appellation: brunello_di_montalcino_appellation)
Wine.find_or_create_by!( name: 'Chàteau les Charmes-Godard', country_id: france.id, wine_type_id: red_wine.id, wine_region: bordeaux, appellation: bcdf_appellation )
Wine.find_or_create_by!( name: 'Kung Fu Girl', country_id: usa.id, wine_type_id: white_wine.id, state: washington, appellation: ancient_lakes_appellation, producer: 'Charles Smith', varietal: riesling )
Wine.find_or_create_by!( name: 'Boizel', country_id: france.id, wine_type_id: sparkling_rose.id, wine_region: champagne, appellation: champagne_appellation ) 
Wine.find_or_create_by!( name: "Sophie's Block", country_id: australia.id, wine_type_id: white_wine.id, wine_region: WineRegion.find_by(name: "NE Victoria"), appellation: beechworth_appellation, producer: "Piano Piano", varietal: chardonnay)
