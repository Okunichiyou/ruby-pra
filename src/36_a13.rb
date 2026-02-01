n, k = gets.split.map(&:to_i)

arrays = gets.chomp.split.map(&:to_i)

filtered = arrays.combination(2).select do |arr|
  arr[1] - arr[0] <= k
end

puts filtered.size
