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
    
  {"Basilicata": [
    { "D.O.C.G.": ["Aglianico del Vulture Superiore"],
      "D.O.C.": [
        "Aglianico del Vulture",
        "Grottino de Roccanova",
        "Matera",
        "Terre dell'Alta Val d'Agri"
        ] }
    ]},

  {"Calabria": [
    { "D.O.C.G.": [],
      "D.O.C.": [
        "Bivongi",
        "Ciro",
        "Greco di Bianco",
        "Lamezia",
        "Melissa",
        "S.Anna di Isola Capo Rizzuto",
        "Savuto",
        "Scavigna",
        "Terre di Cosenza"
        ] }
    ]},

  {"Campania": [
    { "D.O.C.G.": [
      "Aglianico del Taburno",
      "Fiano di Avellino",
      "Greco di Tufo",
      "Taurasi"
      ],
      "D.O.C.": [
        "Aversa",
        "Campi Flegrei",
        "Capri",
        "Casavecchia di Pontelatone",
        "Castel San Lorenzo",
        "Cilento",
        "Costa d'Amalfi",
        "Falanghina del Sannio",
        "Falerno del Massico",
        "Galluccio",
        "Irpinia",
        "Ischia",
        "Penisola Sorrentina",
        "Sannio",
        "Vesuvio"
        ] }
    ]},

  {"Emilia Romagna": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Friuli Venezia Giulia": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Lazio": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Liguria": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Lombardia": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Marche": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Molise": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Piemonte il Monferrato": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Piemonte il Nord": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Piemonte l’Astigiano": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Piemonte le Langhe": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Puglia": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Sardegna": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Sicilia": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Toscana": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Toscana 'Il cuore antico'": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Trentino Alto Adige": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Umbria": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Valle d’Aosta": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]},

  {"Veneto": [
    { "D.O.C.G.": [],
      "D.O.C.": [] }
    ]}
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
