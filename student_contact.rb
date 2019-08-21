require './student'
class StudentContact < Student
	attr_accessor :address, :phone_number
	def initialize
		super
		puts "Please enter the address:"
		self.address = "asdfadsf"#gets.chomp
		puts "Please enter the phone_number:"
		self.phone_number = "asdfasdf"#gets.chomp
	end

	def say_hello
		puts "Hello #{name} - Your roll number is #{roll_number}"
		puts "Your address is: #{address}, phone_number is #{phone_number}"
	end
end