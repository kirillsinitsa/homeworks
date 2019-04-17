require 'time'

def task_3(str)
  return '0' if /Calling core with action:/.match(str).nil?

  array_str = str.split("\n")
  from = time_from_string(array_str.first)
  to = time_from_string(array_str.last)
  (to - from).to_s
end

def time_from_string(str)
  Time.parse(str.split[0..1].join(' '))
end
