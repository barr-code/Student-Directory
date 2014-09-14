@students = []

def print_header
	puts "The students of my cohort at Makers Academy".center(50)
	puts "--------------------".center(50)
end

def print_students_list
	@students.each.with_index(1) {|student, n| puts "#{n}: #{student[:name]} (#{student[:cohort]} cohort)".center(50)}
end

def print_footer
	puts "Overall, we have #{@students.length} great students.".center(50)
end

def input_students
	puts "Please enter the names of the student.".center(50)
	puts "To finish, just hit return twice.".center(50)
		name = STDIN.gets.chomp
	while !name.empty? do
		puts "Enter the student's cohort."
		cohort = STDIN.gets.chomp
		
		puts "How old is the student?"
		age = STDIN.gets.chomp
		
		puts "What is the student's hobby?"
		hobby = STDIN.gets.chomp
		
		add_student(name, cohort, age, hobby)
		puts "Now we have #{@students.length} students!".center(50)
		
		name = STDIN.gets.chomp
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

def add_student(name, cohort = :september, age, hobby)
	@students << {:name => name, :cohort => cohort.to_sym, :age => age, :hobby => hobby}
end

def load_students(filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		add_student(name, cohort)
	end
	file.close
end

def try_load_students
	filename = ARGV.first
	return if filename.nil?
	if File.exists?(filename)
		load_students(filename)
			puts "Loaded #{@students.length} from #{filename}.".center(50)
	else
		puts "Sorry, #{filename} doesn't exist.".center(50)
		exit
	end
end

def print_menu
	puts "1. Input the students".center(50)
	puts "2. Show the students".center(50)
	puts "3. Save the list to students.csv".center(50)
	puts "4. Load the list from students.csv".center(50)
	puts "9. Exit".center(50)
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
		when "4"
			load_students
		when "9"
			exit
		else
			puts "I don't know what you meant, try again.".center(50)
	end
end

def interactive_menu
	loop do
		print_menu
		process(STDIN.gets.chomp)
	end
end


try_load_students
interactive_menu