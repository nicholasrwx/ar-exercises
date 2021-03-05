require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


#store_id(int) store identifier
#points to id(int column of store)

@stores1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@stores1.employees.create(first_name: "Jason", last_name: "Stathom", hourly_rate: 45)
@stores2.employees.create(first_name: "Jonathan", last_name: "Borge", hourly_rate: 60)
@stores2.employees.create(first_name: "Helium", last_name: "Cat", hourly_rate: 50000)
@stores3.employees.create(first_name: "Kona", last_name: "Pupper", hourly_rate: 10000)
@stores3.employees.create(first_name: "Thee", last_name: "OG Romeo", hourly_rate: 7856)
@stores5.employees.create(first_name: "First-Class", last_name: "Milton", hourly_rate: 0)




# We haven't used the Employee class (and employees table) at all yet. 
# If you look at this table's column structure, you'll find that it has a `store_id` (integer) column. 
# This is a column that identifies which store each employee belongs to. 
# It points to the `id` (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.
# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the `@store#` instance variables that you defined in previous exercises. Create a bunch under `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.
