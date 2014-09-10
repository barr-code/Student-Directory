student_count = 15

students = ["Victoria Barr", "Karin Nielsen", "Andrew Snead", "Nicole Tredway", "Rachel Nolan",
"Tim Scully", "Craig Horsborough", "Camilla van Klinken", "Andrew Hercules", "Peter Saxton",
"Dario Daprile", "Anna Schechter", "Denise Yu", "Alex Fakhri", "Bernard Mordan"]

puts "The students of my cohort at Makers Academy"
puts "--------------------"
students.each {|student| puts student}

puts "Overall, we have #{students.length} great students."
