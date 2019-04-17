def task_4(str)
  sum = 0
  str.each_char do |c|
    sum += c.to_i
  end
  sum
end
