h, w = gets.split.map(&:to_i)

# 単純に指定された領域を足し合わせるロジックにすると、2000億くらいの計算量になるのでまずい
# 225,000,000,000 = 1500 * 1500 * 100000

grid = []
# 1500ループ
h.times do
  grid << gets.split.map(&:to_i)
end
sum = Array.new(h + 1) { Array.new(w + 1, 0) }

# 1500 * 1500
1.upto(h) do |i|
  1.upto(w) do |j|
    sum[i][j] = grid[i-1][j-1] + sum[i-1][j] + sum[i][j-1] - sum[i-1][j-1]
  end
end

q = gets.to_i

q.times do
  a, b, c, d = gets.split.map(&:to_i)

  answer = sum[c][d] - sum[a-1][d] - sum[c][b-1] + sum[a-1][b-1]
  puts answer
end
