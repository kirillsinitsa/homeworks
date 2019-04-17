# .flatten returns flatten array. It means that all elements would be opened
# recursively. Also you can specify level of recursion
# => array.flatten(2) would open only first 2 array "layers"
# .uniq returns array w/o repetative elements
# .sort returns same array but sorted, can be reversed w/ {|x,y| y <=> x } but
# we have .reverse, that returns same array but reversed

def task_4_3(array)
  array.flatten.uniq.sort.reverse
end
