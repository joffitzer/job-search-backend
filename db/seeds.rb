# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying all Employers"
Employer.destroy_all

puts "Creating Employers"
Employer.create(name: "Google", description: "Google Description", logo: "https://banner2.cleanpng.com/20180419/evq/kisspng-google-logo-google-search-google-account-redes-5ad81f9d785f93.4350404715241133094931.jpg", industry: "Tech")
Employer.create(name: "Facebook", description: "Facebook Description", logo: "https://banner2.cleanpng.com/20180419/evq/kisspng-google-logo-google-search-google-account-redes-5ad81f9d785f93.4350404715241133094931.jpg", industry: "Tech")
