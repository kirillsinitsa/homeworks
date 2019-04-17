def process_string(str)
  sum = 0
  str.split('').each do |char|
    begin
      n = Integer(char)
      sum += n
    rescue ArgumentError
      nil
    end
  end
  sum
end

def task_4(str)
  str.is_a?(String) ? process_string(str) : 0
end
