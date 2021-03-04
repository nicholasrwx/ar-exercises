require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

class Business

  attr_accessor :store3

  def initialize
      store = Store.new
  end

  store3 = Store.find_by("id = 3")

  puts store3.name
  
  store3.destroy
  
  puts Store.count

end






# 1. Load the third store (into `@store3`) as you did the other two before.
# 2. Using Active Record's `destroy` method, delete the store from the database.
# 3. Verify that the store has been deleted by again outputting (`puts`ing) the `count` (as you did in Exercise 1.)








