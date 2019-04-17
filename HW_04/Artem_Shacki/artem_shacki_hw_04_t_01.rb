def fibo(num)
  fibo = [1, 1]
  (num - 2).times do
    fibo << fibo[-1] + fibo[-2]
  end
  fibo
end

def task_4_1(num)
  if num == 1
    [1]
  elsif num.zero?
    [0]
  elsif num < 0
    []
  else
    fibo(num)
  end
end
