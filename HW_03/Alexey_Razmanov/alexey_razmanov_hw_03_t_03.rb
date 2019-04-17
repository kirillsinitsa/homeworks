require 'date'

def task_3(string)
  string = (string.each_line.select do |line|
    line.include?('Calling core with action:')
  end)
  string.size >= 2 ? time_btwn_acts(string) : '0'
end

def time_btwn_acts(string)
  finish = DateTime.strptime(string.last,
                             '%Y-%m-%d %H:%M:%S.%L').strftime('%Q').to_i
  start = DateTime.strptime(string.first,
                            '%Y-%m-%d %H:%M:%S.%L').strftime('%Q').to_i
  (finish - start) / 1000.0
end
