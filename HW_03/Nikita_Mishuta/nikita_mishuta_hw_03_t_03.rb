def task_3(string)
  message = 'Calling core with action'
  array = []
  string.each_line { |e| array << Time.parse(e.chop) if e.include?(message) }
  array.size != 2 ? '0' : (arr[1] - arr[0]).to_s
end
