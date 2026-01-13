result = 0
gets.chomp.each_char do |i|
  result = result * 2 + i.to_i
end
puts result
