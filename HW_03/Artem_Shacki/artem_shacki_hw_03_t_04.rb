def task_4(str)
  str.scan(/\d+?/).sum(&:to_i)
end
