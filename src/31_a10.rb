n = gets.to_i
capacities = gets.split.map(&:to_i)
capacities.prepend(0)

d = gets.to_i

# 10万ループ
d.times do
  l, r = gets.split.map(&:to_i)
  # 10万ループ
  left_max = capacities[1...l].max
  right_max = capacities[(r + 1)..n].max

  puts [left_max, right_max].max
end
