require './student_contact'
class Marks < StudentContact
	attr_accessor :s1, :s2, :s3, :s4, :total
	def initialize
		super
		puts "Calculation is  loaded"
		m = (1..100).to_a
		4.times do |n|
			puts "Please enter the mark #{n+1}:"
			instance_variable_set("@s#{n+1}", m.sample)
		end
	end

	def say_hello
		super
		self.total = get_total_marks_ins(s1, s2, s3)
		puts "Total mark is #{total} from Instance"
		self.total = Marks.get_total_marks_cls(s1, s2, s3, s4)
		puts "Total mark is #{total} from Class"
		Admin::Staff.new.hello_from_staff
	end
end
obj = Marks.new
obj.say_hello
obj.hello
binding.pry
