def tribonacci(n)
  return   if n < 1
  a, b, c = 0, 0, 1
  (n - 1).times { a, b, c = b, c, a + b + c }
  a
end

puts "数を出したいのは何項目ですか？"
n = gets.to_i  
# -> 11を入力
puts "#{n}項目の数字は#{tribonacci(n)}" 
# -> 11項目の数字は81