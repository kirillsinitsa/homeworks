def check(str)
  status = true
  str.each_char.with_index do |c, i|
    unless c.casecmp(str[str.size - i - 1]).zero?
      status = false
      break
    end
  end
  status
end

def task_4_4(string)
  string.is_a?(String) ? check(string) : false
end
