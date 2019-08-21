require 'rubygems'
require 'date'
require 'pry'
require './module_ex.rb'
class Student
	include Calculation
	extend CalculationNew
	attr_accessor :name, :roll_number
	def initialize
		puts "Please enter the name:"
		self.name = "Muthu"#gets.chomp
		puts "Please enter the roll_number:"
		self.roll_number = "Test"#gets.chomp
	end

	def hello
		puts "Helo from Parent"
	end

	def say_hello
	end
end