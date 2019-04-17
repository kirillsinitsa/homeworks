def task_4(str)
  arr = str.split('')
  arr.select! { |i| i if i.to_i != 0 }
  arr.map!(&:to_i)
  arr.sum
end
