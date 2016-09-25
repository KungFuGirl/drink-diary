# Seed Country list. Needs to run first.
countries_data = [
  { name: "USA" },
  { name: "France" },
  { name: "Italy" },
  { name: "Australia" }
  ]

countries_data.each do |country_data|
  Country.find_or_create_by!(country_data)
end