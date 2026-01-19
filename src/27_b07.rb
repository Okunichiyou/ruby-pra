t = gets.to_i
n = gets.to_i

results = [0] * (t * 2 + 1)

# 50万ループ
n.times do |i|
  l, r = gets.split.map(&:to_i)
  results[l * 2] += 1
  results[r * 2] -= 1
end

count = 0
# 100万ループ = 2 * 50万
(t * 2).times do |time|
  count += results[time]
  puts count if time % 2 == 0
end
