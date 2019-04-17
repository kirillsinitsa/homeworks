# frozen_string_literal: true

def task_4(str)
  newstr = str.chars
  newstr.map!(&:to_i)
  newstr.sum
end
