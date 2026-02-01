n, k = gets.split.map(&:to_i)

arrays = gets.chomp.split.map(&:to_i)

result = 0
# 10万回探索 = n - 1
n.times do |i|
  left_pair = arrays[i]
  max_right_pair = left_pair + k
  # log2(n)探索
  left = i
  right = n

  while left < right
    mid = (left + right) / 2
    if arrays[mid] > max_right_pair
      right = mid
    else
      left = mid + 1
    end
  end

  result += (left - i - 1)
end

puts result
