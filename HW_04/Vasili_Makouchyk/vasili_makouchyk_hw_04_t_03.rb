def task_4_3(array)
  array.flatten.uniq.sort { |a, b| b <=> a }
end
