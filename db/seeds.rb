# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Problem.create!(matrix: '3 2 -5 2 -1 3 1 2 -1', m: 3, n: 3, b: '-1 13 9')
p2 = Problem.create!(matrix: '2 5 4 1 1 3 2 1 2 10 9 7 3 8 9 2', m: 4, n: 4, b: '20 11 40 37')

Solution.create!(answer: '3 5 4', problem: p1)
Solution.create!(answer: '1 2 2 0', problem: p2)
