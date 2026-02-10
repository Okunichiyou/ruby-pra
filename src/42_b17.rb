n = gets.to_i
h = gets.split.map(&:to_i)

dp = Array.new(n, Float::INFINITY)
prev = Array.new(n)

dp[0] = 0

(1...n).each do |i|
  # 1つ前の足場から来る場合
  dp[i] = dp[i - 1] + (h[i] - h[i - 1]).abs
  prev[i] = i - 1

  # 2つ前の足場から来る場合
  cost2 = dp[i - 2] + (h[i] - h[i - 2]).abs

  if cost2 < dp[i]
    dp[i] = cost2
    prev[i] = i - 2
  end
end

path = []
i = n - 1
while i
  path << i + 1
  i = prev[i]
end
path.reverse!

puts path.size
puts path.join(' ')
