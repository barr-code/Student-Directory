def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------------"
end

def print(students)
	students.each.with_index(1) {|student, n| puts "#{n}: #{student[:name]} (#{student[:cohort]} cohort)"}
end

def print_footer(students)
	puts "Overall, we have #{students.length} great students."
end

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice."
	
	students = []
	name = gets.chomp
	while !name.empty? do
		students << {:name => name, :cohort => :september}
		puts "Now we have #{students.length} students!"
		name = gets.chomp
	end
	students
end

def interactive_menu
	students = []
	loop do
		puts "Welcome to the Makers Academy Student Directory."
		puts "What would you like to do?"
		puts "1. Input the student"
		puts "2. Show the students"
		puts "9. Exit"
		
		selection = gets.chomp
		
		case selection
			when "1"
				students = input_students
			when "2"
				print_header
				print(students)
				print_footer(students)
			when "9"
				exit
			else
				puts "I don't know what you meant, try again."
		end
	end
end


interactive_menu