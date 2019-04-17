def fib(number)
  # used dynamic programming
  res = Array.new(number) { 0 }
  return [0] if res.empty?
  return [1] if number == 1

  res[0] = 1
  res[1] = 1
  (2...res.size).each { |ind| res[ind] = res [ind - 2] + res[ind - 1] }
  res
end

def task_4_1(number)
  if number.is_a?(Integer) && number >= 0
    fib(number)
  else
    []
  end
end
