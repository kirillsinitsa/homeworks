def task_4_1(num, iter = 0)
  answer = [0, 1]
  if num > 0
    fibonacci(iter, num, answer)
    answer.drop(1)
  elsif num.zero?
    [0]
  else answer.drop(2)
  end
end

def fibonacci(iter, num, answer)
  while iter < num - 1
    answer << answer[iter + 1] + answer[iter]
    iter += 1
  end
  answer
end
