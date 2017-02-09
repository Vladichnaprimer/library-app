# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Author.destroy_all

Category.create([{name: 'Biography'},
        {name: 'Web Development'},
        {name: 'Education'},
        {name: 'Sci-Fi'},
        {name: 'Fiction'},
        {name: 'Cookbook'},
        {name: 'Fantasy'},
        {name: 'Medical'},
        {name: 'Crime'},
        {name: 'History'},
        {name: 'Adventure'}])

Author.create([{name: 'Sam Ruby'},
        {name: 'Dave Thomas'},
        {name: 'Viktor Pelevin'},
        {name: 'Brad Green'},
        {name: 'Shyam Seshardy'},
        {name: 'Isaac Asimov'},
        {name: 'Raymond Murphy'},
        {name: 'Jack Kerouac'},
        {name: 'George Orwell'},
        {name: 'Kusma Skryabin'},
        {name: 'Simon Lovestone'},
        {name: 'Stephen King'},
        {name: 'Sam Ruby'},
        {name: 'Kathy Sierra'},
        {name: 'Bert Bates'}])
