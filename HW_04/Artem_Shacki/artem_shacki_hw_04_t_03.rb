def task_4_3(arr)
  arr.flatten.sort { |x, y| y <=> x }.uniq
end
