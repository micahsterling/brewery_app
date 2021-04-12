# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'csv'

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'breweries_us.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Brewery.new
  t.brewery_name = row['brewery_name']
  t.type = row['type']
  t.address = row['address']
  t.website = row['website']
  t.state = row['state']
  t.state_breweries = row['state_breweries']
  t.save
end

puts "There are now #{Brewery.count} rows in the transactions table"