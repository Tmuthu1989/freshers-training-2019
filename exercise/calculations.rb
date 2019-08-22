module Calculations
	def get_total(marks)
		marks.values.compact.sum
	end

	def get_average(marks)
		get_total(marks) / marks.count
	end

	def find_result(marks)
		result = {}
		marks.each do |sub, mark|
			result[sub] = "Pass" if mark >= @pass_mark
			result[sub] = "Fail" if mark < @pass_mark
		end
		result
	end
end