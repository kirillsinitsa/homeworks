require 'time'

def cores(lines)
  arr = lines.split(/\n+/)
  arr.select do |line|
    line =~ /Calling core with action/
  end
end

def timelog(lines)
  cores(lines).map do |line|
    Time.parse(line.chomp)
  end
end

def task_3(str)
  if cores(str).size >= 2
    (timelog(str)[-1] - timelog(str)[0]).to_s
  else
    '0'
  end
end
