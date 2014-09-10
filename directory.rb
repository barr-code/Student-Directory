student_count = 15

students = ["Victoria Barr", "Karin Nielsen", "Andrew Snead", "Nicole Tredway", "Rachel Nolan",
"Tim Scully", "Craig Horsborough", "Camilla van Klinken", "Andrew Hercules", "Peter Saxton",
"Dario Daprile", "Anna Schechter", "Denise Yu", "Alex Fakhri", "Bernard Mordan"]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------------"
end

def print(names)
	names.each {|name| puts name}
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

print_header
print(students)
print_footer(students)