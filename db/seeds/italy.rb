italy = Country.find_by( name: "Italy" )

italy_wine_data = [
  { "Abruzzo": 
    [ 
      { "D.O.C.G": ["Montepulciano d'Abruzzo Colline Teramane"] },
      { "D.O.C": ["Abruzzo", 
        "Cerasuolo d'Abruzzo", 
        "Contoguerra", 
        "Montepulciano d'Abruzzo", 
        "Ortona", 
        "Terre Tollesi o Tullum",
        "Trebbiano d'Abruzzo",
        "Villamagna"] } 
    ]
   },
    
  {"Basilicata": []},
  {"Calabria": []},
  {"Campania": []},
  {"Emilia Romagna": []},
  {"Friuli Venezia Giulia": []},
  {"Lazio": []},
  {"Liguria": []},
  {"Lombardia": []},
  {"Marche": []},
  {"Molise": []},
  {"Piemonte il Monferrato": []},
  {"Piemonte il Nord": []},
  {"Piemonte l’Astigiano": []},
  {"Piemonte le Langhe": []},
  {"Puglia": []},
  {"Sardegna": []},
  {"Sicilia": []},
  {"Toscana": []},
  {"Toscana 'Il cuore antico'": []},
  {"Trentino Alto Adige": []},
  {"Umbria": []},
  {"Valle d’Aosta": []},
  {"Veneto": []}
]

italy_wine_data.each do |wine_data|
  wine_data.each do |wine_region, arr_class_app|
    wine_reg = WineRegion.find_or_create_by!( {name: wine_region, country: italy} )
    arr_class_app.each do |class_app_hash|
      class_app_hash.each do |classif_name, app_arr|
        cur_classification = Classification.find_or_create_by!( {name: classif_name, country: italy} )
        app_arr.each do |app_name|
          Appellation.find_or_create_by!( {name: app_name, classification: cur_classification, wine_region: wine_reg} )
        end
      end
    end
  end
end
