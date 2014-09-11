student_count = 15

students = [
{:name => "Victoria Barr", :cohort => :september},
{:name => "Karin Nielsen", :cohort => :september}, 
{:name => "Andrew Snead", :cohort => :september}, 
{:name => "Nicole Tredway", :cohort => :september}, 
{:name => "Rachel Nolan", :cohort=> :september},
{:name => "Tim Scully", :cohort => :september}, 
{:name => "Craig Horsborough", :cohort => :september}, 
{:name => "Camilla van Klinken", :cohort => :september}, 
{:name => "Andrew Hercules", :cohort => :september}, 
{:name => "Peter Saxton", :cohort => :september},
{:name => "Dario Daprile", :cohort => :september}, 
{:name => "Anna Schechter", :cohort => :september}, 
{:name => "Denise Yu", :cohort => :september}, 
{:name => "Alex Fakhri", :cohort => :september}, 
{:name => "Bernard Mordan", :cohort => :september}]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "--------------------"
end

def print(students)
	students.each {|student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

print_header
print(students)
print_footer(students)