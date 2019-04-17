def task_4(string)
  chars = string.gsub(/\D*/, '').chars
  result = 0
  chars.each { |digit| result += digit.to_i }
  result
end
