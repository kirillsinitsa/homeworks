def task_1(var)
  var.each_line { |line| return line.chomp if line.downcase.include?('error') }
  ''
end
