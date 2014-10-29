# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = Restaurant.create([
    {
        name: 'Cypress Stree Pint and Grill',
        address: '817 West Peachtree St NE, Atlanta, GA 30308',
        phone: '404.815.9243',
        website: 'http://www.cypressbar.com/'
    },
    {
        name: 'Escorpion',
        address: '800 Peachtree St NE, Atlanta, GA 30308',
        phone: '678.666.5198',
        website: 'http://www.urestaurants.net/'
    },
    {
        name: 'The Spence',
        address: '75 5th St NW, Atlanta, GA 30308',
        phone: '404.892.9111',
        website: 'http://www.thespenceatl.com/'
    },
    {
        name: 'The Vortex Bar and Grill',
        address: '878 Peachtree St NE, Atlanta, GA 30309',
        phone: '.404.875.1667',
        website: 'http://www.thevortexbarandgrill.com/'
    }
])