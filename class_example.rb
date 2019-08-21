require 'rubygems'
require 'date'
require 'pry'
class Search
	attr_accessor :origin, :destination, :travel_date, :return_date
	def initialize(o, d, td, rd)
		@name = "Test"
		self.origin = o
		self.destination = d
		self.travel_date = td
		self.return_date = rd
	end
end

class SearchResult
	def ins_search(s_obj)
		# SearchResult.search
		puts "Instance Method"
	end

	def addition(roll_number, students={})
		student = students[roll_number]
		puts student
		success = true
		puts "Student Name is: #{student[:name]}" if student != nil
		puts "Student Name not available" if student == nil
		student
	end

	def self.cls_search
		puts "Class Method"
	end
end
obj = Search.new("CHennai", "Bangalore", Date.today, "Date.tomorrow")
obj1 = SearchResult.new
obj1.ins_search(obj)
students = {
	1 => {
		name: "Test",
		mark: 100
	},
	2 => {
		name: "Student 2",
		mark: 150
	}
}
puts "Enter the roll_number"
rno = gets.chomp.to_i
a, success = obj1.addition(rno, students)
binding.pry
# SearchResult.search