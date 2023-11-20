require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Donald", last_name: "Duck", hourly_rate: 120)
@store1.employees.create(first_name: "Daisy", last_name: "Duck", hourly_rate: 100)
@store2.employees.create(first_name: "Minnie", last_name: "Mouse", hourly_rate: 60)
@store2.employees.create(first_name: "Mickey", last_name: "Mouse", hourly_rate: 60)
@store2.employees.create(first_name: "Princess", last_name: "Zelda", hourly_rate: 20)
@store2.employees.create(first_name: "Link", last_name: "Zelda", hourly_rate: 30)
