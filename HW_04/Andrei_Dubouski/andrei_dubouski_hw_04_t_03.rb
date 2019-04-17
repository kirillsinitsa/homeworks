def task_4_3(array)
  array.flatten(1).uniq.sort { |x, y| y <=> x }
end
