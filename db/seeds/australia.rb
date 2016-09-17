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
