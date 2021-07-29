# N番目のフィボナッチ数を計算
def fibonacci(n)
  return   if n < 0
  return n if n < 2
  a, b = 0, 1
  n.times { a, b = b, a + b }
  a
end

# フィボナッチ数列を取得
fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

p fib.take(10)