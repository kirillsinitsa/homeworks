def task_4_1(number)
  return [0] if number.zero?
  return [] if number < 0
  return [1] if number == 1

  arr = [1, 1]
  (number - 2).times { arr << arr[arr.size - 1] + arr[arr.size - 2] }
  arr
end
