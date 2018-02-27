require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 9"
puts "----------"

@empty_store = Store.create!(name: 'Test Empty Store', annual_revenue: 0, mens_apparel: true, womens_apparel: false)

puts "---Delete store---"

print "Enter store (id) to be destroyed: "
@store_id = gets.chomp

# Make sure non-empty stores cannot be destroyed
@store_to_be_destroyed = Store.find_by!(id: @store_id)
@store_to_be_destroyed.destroy


# # Make sure empty stores can be destroyed
# @empty_store.destroy

p Store.all


