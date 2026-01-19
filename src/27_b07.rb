t = gets.to_i
n = gets.to_i

results = [0] * (t + 1)

# 50万ループ
n.times do |i|
  l, r = gets.split.map(&:to_i)
  results[l] += 1
  results[r] -= 1
end

count = 0
# 50万ループ
(t).times do |time|
  count += results[time]
  puts count
end
