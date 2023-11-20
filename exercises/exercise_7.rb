require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Store
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: { only_integer: true, greater_than: 20, less_than: 201 }
  validates :store, presence: true
end

puts "Enter your store name:"
store_name = gets.chomp
new_store = Store.create(name: store_name)

new_store.errors.full_messages.each { |msg| puts msg }
