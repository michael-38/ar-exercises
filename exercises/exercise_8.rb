require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
# require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

puts "---Add Employee---"

print "Enter store id: "
@store_id = gets.chomp

print "Enter employee's first name: "
@first_name = gets.chomp

print "Enter employee's last name: "
@last_name = gets.chomp

print "Enter employee's hourly rate: "
@hourly_rate = gets.chomp



Store.find_by(id: @store_id).employees.create!(first_name: @first_name, last_name: @last_name, hourly_rate: @hourly_rate)
p Employee.all
# p Store.all