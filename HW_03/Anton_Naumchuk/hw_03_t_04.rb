def task_4(str)
  digits = str.gsub(/[^0-9]/, '')
  a = digits.chars
  a.reduce(0) { |sum, el| sum + el.to_i }
end
