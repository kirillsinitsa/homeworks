def task_4(str)
  result = str.each_char.inject(0) { |sum, number| sum + number.to_i }
  result
end
