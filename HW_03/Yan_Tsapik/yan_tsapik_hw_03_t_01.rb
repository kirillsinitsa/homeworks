def task_1(str)
  str.split("\n").each do |line|
    return line if /error/i =~ line
  end
  ''
end
