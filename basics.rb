a, b, c = [1, 5, 1]
case a
	when 1
		puts "A is 1"
	when 2
		puts "A is 2"
	else
		puts "A is something else"
end

for i in (1..5)
	# puts i
end
students = []
10.times do |n|
	puts "Enter the name of Student #{n+1}:"
	name = gets.chomp
	students << name
end
students.each_with_index do |st, i|
	puts "Student #{i+1} Name: #{st} "
end