def divisor(num)
  (1..num).select{ |i| num % i == 0 }
  # selectは、与えたブロックが真になるものだけを集めた配列を返す
end

puts "約数を算出したい整数を入力してください"
num = gets.to_i
r = divisor(num)
p r
puts "約数の数は#{r.length}です"
puts "約数の合計は#{r.sum}です"