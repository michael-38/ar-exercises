require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create!(first_name: "Michael", last_name: "Scott", hourly_rate: 80)
@store1.employees.create!(first_name: "Jim", last_name: "Halpert", hourly_rate: 60)
@store1.employees.create!(first_name: "Dwight", last_name: "Schrute", hourly_rate: 50)

@store2.employees.create!(first_name: "Oscar", last_name: "Martinez", hourly_rate: 45)
@store2.employees.create!(first_name: "Kevin", last_name: "Malone", hourly_rate: 40)
@store2.employees.create!(first_name: "Angela", last_name: "Martin", hourly_rate: 55)

p @store1.employees
p @store2.employees