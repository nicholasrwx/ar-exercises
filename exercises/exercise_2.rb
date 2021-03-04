require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
class Business

  attr_accessor :store1, :store2

  def initialize
      store = Store.new
  end

  store1 = Store.find_by("id = 1")
  store2 = Store.find_by("id = 2")

  store1.name = "Ruby"
  store1.save

end
