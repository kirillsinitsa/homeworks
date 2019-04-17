def task_1(str)
  str.each_line do |line|
    return line.chomp if line =~ /error/
  end
  ''
end
