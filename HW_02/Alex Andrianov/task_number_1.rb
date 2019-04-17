# Getting angle between hour's and minute's hands

# hour - the value of the hour hand
# minute - the value of the minute hand
puts 'Please, enter the value of the hour hand: '
hour = gets.chomp.to_i
puts 'Now enter the value of the minute hand: '
minute = gets.chomp.to_i

# total - the total angle between clock hands
total = (hour * 5 - minute).abs * 6

puts ' The angle between hour and minute hands is ' + total.to_s
