def task_1(string)
  result = ''
  arr = string.split("\n")
  arr.each do |i|
    result.insert(0, i) if i.include?('error')
  end
  result
end
