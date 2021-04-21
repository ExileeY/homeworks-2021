require './array_refinements.rb'
using ArrayRefinements

puts "Print your data from the table: name|github|email"
student_info = gets.chomp.split('|')

puts "Map method: removes leading and trailing whitespaces"
p student_info.my_map { |element| element.strip }

puts "Each method: print each element"
p student_info.my_each { |element| p element }

puts "Select method: show all elements with '@' sign"
p student_info.my_select { |element| element.include?('@') }
