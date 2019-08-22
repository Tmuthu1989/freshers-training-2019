require './student'
class StudentDetail < Student
	def get_student_details
		@no_of_students.times do |n|
			puts "Enter the Roll Number of Student #{n+1}:"
			rno = gets.chomp
			stud_det = {rno: rno}
			puts "Enter the Name of Student #{n+1}:"
			stud_det[:name] = gets.chomp
			marks = {}
			@subjects.each do |subject|
				puts "Enter #{subject} mark:"
				marks[subject] = gets.chomp.to_i
			end
			stud_det[:marks] = marks
			stud_det[:total_mark] = get_total(marks)
			stud_det[:average_mark] = get_average(marks)
			stud_det[:result] = find_result(marks)
			@students[rno] = stud_det
			puts @students
		end
	end
end
