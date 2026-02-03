n, k = gets.split.map(&:to_i)
numbers = gets.chomp.split.map(&:to_i)

left_arr = numbers[0...(n / 2)]
right_arr = numbers[(n / 2)..n]

def all_sum(arr)
  result = [0]
  arr.each do |i|
    result += result.map { it + i }
  end
  result
end

# 約3万2千 = 2 ** 15
left_sums = all_sum(left_arr)

# 約3万2千 = 2 ** 15
right_sums = all_sum(right_arr).sort

ans = left_sums.any? do |l|
  target = k - l
  right_sums.bsearch { it >= target } == target
end

puts ans ? 'Yes' : 'No'
