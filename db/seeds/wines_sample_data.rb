# Countries variables
france = Country.find_by( name: "France" )
italy = Country.find_by( name: "Italy" )
australia = Country.find_by( name: "Australia" )
usa = Country.find_by( name: "USA" )

# Wine types variables
red_wine = WineType.find_by( name: 'Red wine' )
white_wine = WineType.find_by( name: 'White wine' )
sparkling_rose = WineType.find_by( name: 'Sparkling rose wine' )

tuscany = WineRegion.find_or_create_by!( name: 'Tuscany', country_id: italy.id )
bordeaux = WineRegion.find_or_create_by!( name: 'Bordeaux', country_id: france.id )
champagne = WineRegion.find_or_create_by!( name: 'Champagne', country_id: france.id )

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
beechworth_appellation = Appellation.find_or_create_by!( name: 'Beechworth', wine_region: WineRegion.find_by(name: "NE Victoria"), state: State.find_by(name: "Victoria"))

chianti_appellation.blends << chianti_blend
brunello_di_montalcino_appellation.varietals << Varietal.find_or_create_by!( name: 'Sangiovese', is_black: true )

Wine.find_or_create_by!( name: 'Ruffino Riserva Ducale', country_id: italy.id, wine_type_id: red_wine.id, wine_region: tuscany, appellation: chianti_appellation, blend: chianti_blend )
Wine.find_or_create_by!( name: 'Argiano Brunello di Montalcino', country_id: italy.id, wine_type_id: red_wine.id, wine_region: tuscany, appellation: brunello_di_montalcino_appellation)
Wine.find_or_create_by!( name: 'Chàteau les Charmes-Godard', country_id: france.id, wine_type_id: red_wine.id, wine_region: bordeaux, appellation: bcdf_appellation )
Wine.find_or_create_by!( name: 'Kung Fu Girl', country_id: usa.id, wine_type_id: white_wine.id, state: washington, appellation: ancient_lakes_appellation, producer: 'Charles Smith', varietal: riesling )
Wine.find_or_create_by!( name: 'Boizel', country_id: france.id, wine_type_id: sparkling_rose.id, wine_region: champagne, appellation: champagne_appellation ) 
Wine.find_or_create_by!( name: "Sophie's Block", country_id: australia.id, wine_type_id: white_wine.id, wine_region: WineRegion.find_by(name: "NE Victoria"), appellation: beechworth_appellation, producer: "Piano Piano", varietal: chardonnay)
