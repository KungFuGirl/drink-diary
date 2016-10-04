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
        "is_caffeinated": nil,
        "is_diet": false,
        "country": "USA"
      } #/name
    } #/brand
  }, #/parent-company
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
} # /soda_data

soda_data.each do | parent_company, brands_data | 
  brands_data.each do | brand, name_data | 
    name_data.each do | name, soda_data |

      soda = Soda.find_or_create_by!({ 
        name: name, 
        brand: brand,
        color: nil,
        parent_company: parent_company,
        is_diet: soda_data[:is_diet],
        is_caffeinated: soda_data[:is_caffeinated],
        country: Country.find_or_create_by!({ name: soda_data[:country] }),
        creator: User.find_or_create_by!({ name: "Admin" }),
        last_editor: User.find_or_create_by!({ name: "Admin" })
      })

      soda_flavors = []
      soda_ingredients = []

      soda_data[:flavors].each do | flavor |
        flavor = Flavor.find_or_create_by!({ name: flavor })
        soda_flavors << flavor
      end
      soda_data[:ingredients].each do |ingr|
        ingredient = Ingredient.find_or_create_by!({ name: ingr })
        soda_ingredients << ingredient
      end

      soda.flavors = soda_flavors
      soda.ingredients = soda_ingredients

    end
  end
end
