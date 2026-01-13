result = 0
gets.chomp.split("").map(&:to_i).reverse_each.each_with_index do |v, i|
  result += 2 ** i if v == 1
end
puts result
