# N番目のフィボナッチ数を計算
def fibonacci(n)
  return   if n < 0
  return n if n < 2
  a, b = 0, 1
  n.times { a, b = b, a + b }
  a
end

puts "数を出したいのは何項目ですか？"
n = gets.to_i  
# -> 11を入力
puts "#{n}項目の数字は#{fibonacci(n)}" 
# -> 11項目の数字は89

# フィボナッチ数列を取得
# fib = Enumerator.new do |y|
#   a = b = 1
#   loop do
#     y << a
#     a, b = b, a + b
#   end
# end

# p fib.take(10)