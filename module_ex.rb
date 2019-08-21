module Calculation
	def get_total_marks_ins(s1, s2, s3)
		puts "hello"
		total = s1.to_i + s2.to_i + s3.to_i
	end
end

module CalculationNew
	def get_total_marks_cls(s1, s2, s3, s4)
		total = s1.to_i + s2.to_i + s3.to_i + s4.to_i
	end
end

module Admin
	class Staff
		def hello_from_staff
			puts "Hi all! From staff"
		end
	end
end