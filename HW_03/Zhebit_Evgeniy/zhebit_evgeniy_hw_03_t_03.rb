# frozen_string_literal: true

require 'time'

def task_3(variable)
  from = nil
  to = nil
  variable.split("\n").each do |line|
    if line.include?('Calling core with action:')
      to = Time.parse(line) unless from.nil?
      from = Time.parse(line) if to.nil?
    end
  end
  return '0' unless to

  (to - from).to_str
end
