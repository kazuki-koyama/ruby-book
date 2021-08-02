def third(num)
  array = [*1..30000]
  array.select{ |num| num % 3 == 0 || num.to_s.include?("3")}.inject(:+)
end

num = gets.to_i
r = third(num)
