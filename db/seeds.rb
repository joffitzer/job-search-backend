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
google = Employer.create(name: "Google", description: "Google Description", logo: "https://banner2.cleanpng.com/20180419/evq/kisspng-google-logo-google-search-google-account-redes-5ad81f9d785f93.4350404715241133094931.jpg", industry: "Tech")
facebook = Employer.create(name: "Facebook", description: "Facebook Description", logo: "https://banner2.cleanpng.com/20180419/evq/kisspng-google-logo-google-search-google-account-redes-5ad81f9d785f93.4350404715241133094931.jpg", industry: "Tech")


puts "Destroying all Jobs"
Job.destroy_all

puts "Creating Jobs"
google_job_one = Job.create(employer: google, title: "Software Engineer", location: "New York, NY", category: "Software Engineering", summary: "Entry-level Software Engineer - Sample Summary", description: "Sample description blah blah blah", sal_range_low: 50000, sal_range_high: 70000, active: true)
facebook_job_one = Job.create(employer: facebook, title: "Software Developer", location: "San Francisco, CA", category: "Software Engineering", summary: "Summary for a software engineer job at facebook", description: "Another Another Sample description blah blah blah", sal_range_low: 70000, sal_range_high: 90000, active: true)
google_job_two = Job.create(employer: google, title: "Junior Data Scientist", location: "Pittsburgh, PA", category: "Data Science", summary: "Data Scientist job summary", description: "Sample description for data science job blah blah blah", sal_range_low: 20000, sal_range_high: 50000, active: true)


puts "Destroying all Users"
User.destroy_all

puts "Creating Users"
jonah = User.create(first_name: "Jonah", last_name: "Offitzer", email: "joffitzer@gmail.com", bootcamp: "Flatiron School", category: "Software Engineering", grad_month: 2, grad_year: 2020)


puts "Destroying all Portfolio Items"
PortfolioItem.destroy_all 

puts "Creating Portfolio Items"
PortfolioItem.create(user: jonah, title: "launchpad", blurb: "a job-searching app for bootcamp grads", git_url: "samplegiturl.com")
PortfolioItem.create(user: jonah, title: "rate my rental", blurb: "a yelp-style review app for apartment buildings and landlords", git_url: "samplegiturl.com")


puts "Destroying all User Apps"
UserApp.destroy_all

puts "Creating User Apps"
UserApp.create(user: jonah, job: google_job_one, mini_cl: "mini cover letter example blah blah blah")