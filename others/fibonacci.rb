def fibonacci(n)
  return   if n < 0
  return n if n < 2
  a, b = 0, 1
  n.times { a, b = b, a + b }
  a
end