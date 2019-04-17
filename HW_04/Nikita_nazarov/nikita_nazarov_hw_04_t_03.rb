# task 3
def task_4_3(*array)
  array.flatten.uniq.sort { |x, y| y <=> x }
end
