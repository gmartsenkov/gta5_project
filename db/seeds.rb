# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	offroad = Category.create(:name => "OffRoad")
	stunt = Category.create(:name => "Stunts")
	air_race = Category.create(:name => "Air Race")
	water_race = Category.create(:name => "Water Race")
	land_race = Category.create(:name => "Land Race")

	
