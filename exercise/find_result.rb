require './student_detail'
class FindResult < StudentDetail
	def get_result
		get_student_details
		puts "Enter Your Roll Number:"
		rno = gets.chomp
		stud_det = @students[rno]
		puts "Student Details not found" if stud_det == nil
		return if stud_det == nil
		puts "*****************************"
		puts "      			Result 				   "
		puts "*****************************"
		puts "Role Number: #{stud_det[:rno]}"
		puts "Name: #{stud_det[:name]}"
		puts "Marks:"
		puts "--------------------"
		stud_det[:marks].each do |sub, mark|
			puts "#{sub}: #{mark}"
		end
		puts "Total Mark: #{stud_det[:total_mark]}"
		puts "Average Mark: #{stud_det[:average_mark]}"
		puts "Result:"
		puts "--------------------"
		stud_det[:result].each do |sub, res|
			puts "#{sub}: #{res}"
		end
	end
end

fr = FindResult.new
fr.get_result