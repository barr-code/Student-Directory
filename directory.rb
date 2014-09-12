@students = []

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------------"
end

def print_students_list
	@students.each.with_index(1) {|student, n| puts "#{n}: #{student[:name]} (#{student[:cohort]} cohort)"}
end

def print_footer
	puts "Overall, we have #{@students.length} great students."
end

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice."
	
		name = gets.chomp
	while !name.empty? do
		@students << {:name => name, :cohort => :september}
		puts "Now we have #{@students.length} students!"
		name = gets.chomp
	end
end

def save_students
	file = File.open("students.csv", "w")
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "9. Exit"
end

def show_students
	print_header
	print_students_list
	print_footer
end

def process(selection)
	case selection
		when "1"
			input_students
		when "2"
			show_students
		when "3"
			save_students
		when "9"
			exit
		else
			puts "I don't know what you meant, try again."
	end
end

def interactive_menu
	loop do
		print_menu
		process(gets.chomp)
	end
end



interactive_menu