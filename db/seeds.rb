# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Provider.create name: "Udacity", url: "https://www.udacity.com"
Provider.create name: "Coursera", url: "https://www.coursera.org"
Provider.create name: "EdX", url: "https://www.edx.org"