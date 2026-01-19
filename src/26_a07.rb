d = gets.to_i
n = gets.to_i

results = [0] * d

# 最大 10 ** 5
n.times do |i|
  l, r = gets.chomp.split.map(&:to_i)
  range = []
  # 最大 10 ** 5
  results[(l - 1)..(r - 1)] = results[(l - 1)..(r - 1)].map { it + 1}
end

# 最大 10 ** 5
results.each do |count|
  puts count
end