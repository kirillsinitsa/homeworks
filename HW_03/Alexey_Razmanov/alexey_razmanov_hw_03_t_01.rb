def task_1(string)
  res = ''
  string.each_line do |s|
    s.downcase.include?('error') == true ? res = s.chomp : res
  end
  res
end
