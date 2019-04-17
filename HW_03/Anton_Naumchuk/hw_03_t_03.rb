def task_3(str)
  msg = 'Calling core with action'
  arr = []
  str.each_line { |x| arr << Time.parse(x.chomp) if x.include?(msg) }
  arr.size == 2 ? (arr[1] - arr[0]).to_s : '0'
end
