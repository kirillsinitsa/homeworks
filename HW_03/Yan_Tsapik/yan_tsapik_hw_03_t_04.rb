def task_4(str)
  str.scan(/\d/).map(&:to_i).sum
end
