def task_2(str)
  formated_array = []

  str.split("\n").each do |line|
    formated_array << parsed_line(line) unless parsed_line(line).nil?
  end

  formated_array
end

def parsed_line(line)
  ip = /\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b/.match(line)[0]
  datetime = /\[.+\]/.match(line)[0].gsub(/\[|\]/, '')
  route = %r{ /[a-zA-Z0-9_.-/]*}.match(line)[0].strip.upcase
  "#{datetime} FROM: #{ip} TO: #{route}"
rescue StandardError
  nil
end
