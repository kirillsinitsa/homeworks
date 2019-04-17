def under_the_hood(array)
  array.join.split('').sort.reverse.uniq
end

def task_4_3(array)
  under_the_hood(array).map(&:to_i)
end
