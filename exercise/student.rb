require "./calculations"
class Student
	attr_accessor :no_of_students, :no_of_subjects, :subjects, :pass_mark, :students
	include Calculations

	def initialize
		puts "Enter the number of Students"
		self.no_of_students = gets.chomp.to_i
		puts "Enter the number of Subjects"
		@no_of_subjects = gets.chomp.to_i
		@subjects = []
		@students = {}
		get_subjects
		puts "Enter the Pass Mark"
		@pass_mark = gets.chomp.to_i
	end
	def get_subjects
		@no_of_subjects.times do |n|
			puts "Enter Name of Subject #{n+1}:"
			@subjects << gets.chomp
		end
	end
end