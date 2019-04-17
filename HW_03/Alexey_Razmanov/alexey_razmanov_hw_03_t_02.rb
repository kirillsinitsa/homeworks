def task_2(str)
  task_2_sort(str).map do |line|
    ip = line[/.* - -/]
    date = line[/[\[].*[\]]/]
    path = line[/T .* H/]
    if date && path && ip
      date[1..-2] + ' FROM: ' + ip[0..-5] + ' TO:' + path[1..-3].upcase
    end
  end
end

def task_2_sort(str)
  str.each_line.select do |line|
    ip = line[/.* - -/]
    date = line[/[\[].*[\]]/]
    path = line[/T .* H/]
    if date && path && ip
      date[1..-2] + ' FROM: ' + ip[0..-5] + ' TO:' + path[1..-3].upcase
    end
  end
end
