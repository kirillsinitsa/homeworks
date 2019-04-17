def f(_num)
  return 0 if n.zero?
  return 1 if n == 1 || n == 2

  f(n - 1) + f(n - 2)
end
