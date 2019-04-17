def task_1(str)
  result = ''
  str.each_line do |s|
    s =~ /error/i ? result = s.chomp : result
  end
  result
end
