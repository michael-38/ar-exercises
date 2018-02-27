require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@all_revenue = Store.sum("annual_revenue")
print "Total revenue of all stores: "
puts @all_revenue

@average_revenue = Store.average("annual_revenue")
print "Average revenue of all stores: "
puts @average_revenue

@stores_over_1M = Store.where("annual_revenue > ?", 1000000).count
print "Number of stores > $1M in annual revenue: "
puts @stores_over_1M