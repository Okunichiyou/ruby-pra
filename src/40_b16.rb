n = gets.to_i
h = gets.split.map(&:to_i)

dp = Array.new(n, Float::INFINITY)

dp[0] = 0

(1...n).each do |i|
  # 1つ前の足場から来る場合
  dp[i] = dp[i - 1] + (h[i] - h[i - 1]).abs

  # 2つ前の足場から来る場合
  if i >= 2
    dp[i] = [dp[i], dp[i - 2] + (h[i] - h[i - 2]).abs].min
  end
end

puts dp[n - 1]
