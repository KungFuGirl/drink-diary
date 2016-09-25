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
#Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }

seed_data = [ 
  'countries',
  'wine_types_seeds',
  'usa',
  'users',
  'australia',
  'france',
  'italy',
  'soda_flavors',
  'sodas',
  'wines_sample_data'
]

seed_data.each do |seed|
  load File.join(Rails.root, 'db', 'seeds', "#{seed}.rb")
end
