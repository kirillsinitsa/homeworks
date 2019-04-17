def task_4_1(numb)
  return [numb] if numb.zero?
  return [] unless check_validation(numb)
  return [1] if numb == 1

  fibo_array = [1, 1]
  (2..numb - 1).each do |index|
    fibo_array[index] = fibo_array[index - 2] + fibo_array[index - 1]
  end
  fibo_array
end

def check_validation(numb)
  return false if numb < 0 || numb > 1000
  return false unless numb.class == Integer

  true
end
