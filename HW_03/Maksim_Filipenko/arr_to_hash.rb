arr = [2, 3, 4, 5, 6]
hash = {}
arr1 = []
arr.each { |i| hash[arr.index(i)] = i }
hash.each_value { |v| arr1.push(v) }
