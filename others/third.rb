# 1から30,000までの整数のうち、3の倍数と3がつく整数の合計を算出
def third(num)
  array = [*1..30000]
  array.select{ |num| num % 3 == 0 || num.to_s.include?("3")}.inject(:+)
end

num = gets.to_i
r = third(num)
