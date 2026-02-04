n = gets.to_i
a = [0, 0] + gets.split.map(&:to_i)
b = [0, 0, 0] + gets.split.map(&:to_i)

dp = Array.new(n + 1, Float::INFINITY)

dp[1] = 0
dp[2] = a[2]

(3..n).each do |i|
  dp[i] = [dp[i - 1] + a[i], dp[i - 2] + b[i]].min
end

puts dp[n]
