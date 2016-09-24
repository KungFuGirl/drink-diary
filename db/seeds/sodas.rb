soda_data = {
  "Coca-Cola":  { #parent-company
    "Coca-Cola": { #brand
      "Coca-Cola": { #name
        "flavors": [
          "cola"
        ],
        "ingredients": [ 
          "carbonated water",
          "high fructose corn syrup",
          "caramel color",
          "phosphoric acid",
          "natural flavors",
          "caffeine"
        ],
        "is_caffeinated": true,
        "is_diet": false,
        "country": "USA"
      }, # /name
      "Coca-Cola Cherry": { #name
        "flavors": [
          "cherry",
          "cola"
        ],
        "ingredients": [
          "carbonated water",
          "high fructose corn syrup",
          "caramel color",
          "phosphoric acid",
          "natural flavors",
          "caffeine"
        ],
        "is_caffeinated": true,
        "is_diet": false,
        "country": "USA"
      } #/name
    }, #/brand
    "Barq's": { #brand 
      "Diet Barq's": { #name
        "flavors": [
          "root beer"
        ],
        "ingredients": [
          "carbonated water",
          "caramel color",
          "potassium sorbate",
          "sodium benzoate",
          "aspartame",
          "citric acid", 
          "acesulfame potassium",
          "artificial flavors",
          "natural flavors",
          "acaia",
          "potassium chloride"
        ],
        "is_caffeinated": false,
        "is_diet": true,
        "country": "USA"
      },
      "Barq's": { #name
        "flavors": [
          "root beer"
        ],
        "ingredients": [
          "carbonated water",
          "high fructose corn syrup",
          "caramel color",
          "sodium benzoate",
          "caffeine",
          "citric acid", 
          "artificial flavors",
          "natural flavors",
          "acaia"
          ],
          "is_caffeinated": true,
          "is_diet": false,
          "country": "USA"
      } #/name
    } #/brand
  },
  "Rocket Fizz Soda Pop and Candy Shops, LLC": {# /parent-company
    "Rocket Fizz": { #brand
      "Shirley Temple": { #name
        "flavors": [
          "ginger ale",
          "cherry"
        ],
        "ingredients": [
          "carbonated water",
          "sugar",
          "citric acid",
          "sodium benzoate",
          "artificial flavors",
          "natural flavors",
          "acacia",
          "red 40"
        ], 
        "is_caffeinated": null,
        "is_diet": false,
        "country": "USA"
      } #/name
    } #/brand
  }, #/parent-company
  {
    "Independently Owned": {
      "HOTLIPS": { #brand
        "Marionberry": {
          "flavors": [ 
            "marionberry"
          ],
          "ingredients": [
            "carbonated water",
            "marionberries",
            "cane sugar",
            "organic lemon juice"
          ],
          "is_caffeinated": false,
          "is_diet": false,
          "country": "USA"
        } #/name
      }
    }
  } 
} # /soda_data

soda_data.each do | parent_company, brand | 
  brand.each do | brand, name | 
    flavs = []
    ingreds = []
    name.flavors.each do | flavor |
      f = Flavor.find_or_create_by!({ name: flavor })
      flavs << f
    end
    name.ingredients.each do |ingr|
      i = Ingredient.find_or_create_by!({ name: ingr })
      ingreds << i
    end
    Soda.find_or_create_by!({ 
      name: name, 
      brand: brand,
      parent_company: parent_company,
      is_diet: name.is_diet,
      is_caffeinated: is_caffeinated,
      flavors: flavs,
      ingredients: ingreds,
      country: Country.find_or_create_by!({ name: name.country })
    })
  end
end
