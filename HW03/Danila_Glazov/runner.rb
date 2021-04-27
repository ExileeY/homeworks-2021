require './danila_glazov_hw_03_t_01'
require './danila_glazov_hw_03_t_02'
require './danila_glazov_hw_03_t_03'
require './danila_glazov_hw_03_t_04'

puts "Task 1 - Find error logs"

logs = ''
puts "Input logs or type \'end\' to continue:"
while (text = gets) != "end\n"
  logs += text
end
find_error(logs)

puts "Task 2 - Format logs"

logs = ''
puts "Input logs or type \'end\' to continue:"
while (text = gets) != "end\n"
  logs += text
end
p format_logs(logs)

puts "Task 3 - Calculate duration between two actions"

actions = ''
puts "Input logs or type \'end\' to continue:"
while (text = gets) != "end\n"
  actions += text
end
p calc_duration(actions)

puts "Task 4 - Counting letters in a string"
p letter_counter('hel2!lo')
p letter_counter('wicked .. !')
