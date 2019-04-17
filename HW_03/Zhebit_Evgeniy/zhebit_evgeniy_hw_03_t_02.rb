# frozen_string_literal: true

def task_2(variable)
  result = []
  variable.split("\n").each do |line|
    ip = line[/^.* - -./]
    time = line[/[\[].*[\]]/]
    to = line[/T .* H/]
    if ip && time && to
      result << time[1..-2] + ' FROM: ' + ip[0..-5] + 'TO:' + to[1..-3].upcase
    end
  end
  result
end
