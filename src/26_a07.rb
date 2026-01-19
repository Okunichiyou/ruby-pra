d = gets.to_i
n = gets.to_i

results = [0] * (d + 1)

# 10 ** 5
n.times do
  l, r = gets.chomp.split.map(&:to_i)
  results[l-1] += 1
  results[r] -= 1
end

count = 0
# 10 ** 5
d.times do |i|
  count += results[i]
  puts count
end
