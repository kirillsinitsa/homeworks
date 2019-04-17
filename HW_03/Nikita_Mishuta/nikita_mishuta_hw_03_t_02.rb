def task_2(string)
  array_of_lines = string.each_line.map do |line|
    date = line[/[\[].*[\]]/]
    ip = line[/.* - -/]
    directory = line[/T .* H/]
    if date && ip && directory
      date[1..-2] + ' FROM: ' + ip[0..-5] + ' TO:' + directory[1..-3].upcase
    end
  end
  array_of_lines.compact
end
