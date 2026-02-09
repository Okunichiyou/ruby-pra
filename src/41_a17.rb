n = gets.to_i
a = [0, 0] + gets.split.map(&:to_i)
b = [0, 0, 0] + gets.split.map(&:to_i)

dp = Array.new(n + 1, Float::INFINITY)
prev = Array.new(n + 1)

dp[1] = 0
dp[2] = a[2]
prev[2] = 1

(3..n).each do |i|
  if dp[i - 1] + a[i] <= dp[i - 2] + b[i]
    dp[i] = dp[i - 1] + a[i]
    prev[i] = i - 1
  else
    dp[i] = dp[i - 2] + b[i]
    prev[i] = i - 2
  end
end

# 経路を逆にたどって復元
path = []
i = n
while i
  path << i
  i = prev[i]
end
path.reverse!

puts path.size
puts path.join(' ')
