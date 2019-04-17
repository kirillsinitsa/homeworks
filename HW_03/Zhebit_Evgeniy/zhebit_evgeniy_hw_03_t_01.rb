# frozen_string_literal: true

def task_1(variable)
  lines = variable.split("\n")
  lines.each do |line|
    return line if line.downcase.include? 'error'
  end
  ''
end
