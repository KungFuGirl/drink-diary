# soda flavors seed data

soda_flavor_data = [
  "almond",
  "anise",
  "apple",
  "apricot",
  "bacon",
  "banana",
  "birch beer",
  "blackberry",
  "bread",
  "brazil nut",
  "bubblegum",
  "buffalo wing",
  "burdock root",
  "celery",
  "cherry",
  "chocolate",
  "citron",
  "coffee",
  "cola", 
  "cranberry",
  "cream",
  "cream soda",
  "cucumber",
  "dandelion",
  "dirt",
  "gentiana",
  "ginger",
  "ginger ale",
  "ginger beer",
  "grape",
  "grapefruit",
  "guarana",
  "guava",
  "lemon",
  "lemonade",
  "lemon-lime",
  "lemon verbena/herbia luisa",
  "licorice",
  "lime",
  "lychee",
  "malt",
  "mandarin orange",
  "mango",
  "marionberry",
  "mate",
  "melon",
  "mulberry",
  "nectarine",
  "papaya",
  "passionfruit",
  "peach",
  "pear",
  "pineapple",
  "pomegranate",
  "raspberry",
  "ranch dressing",
  "root beer",
  "rye",
  "elderberry",
  "sarsaparilla",
  "strawberry",
  "tamarind",
  "watermelon",
  "white grape"
]

soda_flavor_data.each do |flav|
  Flavor.find_or_create_by!({ name: flav })
end
