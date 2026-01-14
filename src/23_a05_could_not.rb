n, k = gets.chomp.split.map(&:to_i)
result = 0
(1..n).each do |red|
  remain_pair_sum = k - red

  max_blue = [n, remain_pair_sum - 1].min
  min_blue = [1, remain_pair_sum - n].max

  result += [max_blue - min_blue + 1, 0].max
end

puts result
