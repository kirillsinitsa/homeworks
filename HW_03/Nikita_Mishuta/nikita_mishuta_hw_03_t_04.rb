def task_4(string)
  number = 0
  string.scan(/\d+/).map { |e| e.chars { |k| number += k.to_i } }
  number
end
