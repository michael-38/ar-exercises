require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"


puts "---Create a store---"

print "Enter store name: "
@store_name = gets.chomp

print "Enter store's annual revenue: "
@annual_revenue = gets.chomp

print "Does the store carry men's apparel (true/false): "
@mens_apparel = gets.chomp

print "Does the store carry men's apparel (true/false): "
@womens_apparel = gets.chomp


@new_store = Store.create(
  name: @store_name,
  annual_revenue: @annual_revenue,
  mens_apparel: @mens_apparel,
  womens_apparel: @womens_apparel
)

# p Store.order('id ASC')

# puts @new_store.errors.full_messages.to_sentence

@new_store.errors.full_messages.each do |message|
  puts message
end 
