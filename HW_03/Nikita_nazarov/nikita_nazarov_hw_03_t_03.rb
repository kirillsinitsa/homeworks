require 'date'

def task_3(str)
  count_of_actions = 2
  result = 0
  count = 0
  actions = str.each_line.map do |line|
    next unless line.include?('Calling core with action:')

    count += 1
    line[/^.* u/].delete_suffix!('u')
    result = time(actions) if count == count_of_actions
  end
  result.to_s
end

def time(arr)
  firstevent = DateTime.strptime(
    arr.last,
    '%Y-%m-%d %H:%M:%S.%L'
  ).strftime('%Q').to_i
  secondevent = DateTime.strptime(
    arr.first,
    '%Y-%m-%d %H:%M:%S.%L'
  ).strftime('%Q').to_i
  ((firstevent - secondevent) / 1000.0).round(1)
end
