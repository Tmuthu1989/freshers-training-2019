puts "Enter num of students"
n = gets.chomp.to_i
s = []
n.times do |n|
  puts "Enter the student #{n+1} rollnumber:"
  rno = gets.chomp
  h = {}
  puts "Enter the student #{n+1} name:"
  name = gets.chomp
  puts "Enter the student #{n+1} phoneumber:"
  pno = gets.chomp
  puts "Enter the student #{n+1} mark:"
  mark = gets.chomp.to_i
  h = {name: name, rollnumber: rno, phone: pno, mark: mark}
  s << h
end 	
sam = (0..1500).to_a
s1 ||= {}  
n.times do |n1|
	sm = sam.sample  
	puts "#{(n1+1)}---#{sm}"
  s1[n1] = (n1+1) * sm
end  