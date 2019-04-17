def pre_task_1(message)
  message.each_line.select { |line| line.chop!.match(/.*[e]rror/i) }
end

def task_1(message)
  pre_task_1(message).join
end
