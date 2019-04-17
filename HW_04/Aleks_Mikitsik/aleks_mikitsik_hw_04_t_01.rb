def task_4_1(num)
  if num.zero?
    [0]
  elsif num == 1
    [1]
  elsif num < 0
    []
  else
    (3..num).inject([1, 1]) { |fbnci| fbnci << fbnci[-1] + fbnci[-2] }
  end
end
