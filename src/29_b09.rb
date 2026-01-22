n = gets.to_i

max_length = 1500 + 1
field = Array.new(max_length) { Array.new(max_length, 0) }

# 10万ループ
n.times do
  x, y = gets.split.map(&:to_i)
  field[x][y] += 1
end

sum = Array.new(max_length) { Array.new(max_length, 0) }

# 225万ループ = 1500 ** 2
1.upto(max_length - 1) do |w|
  1.upto(max_length - 1) do |h|
    sum[w][h] = field[w][h] + sum[w - 1][h] + sum[w][h - 1] - sum[w - 1][h - 1]
  end
end

q = gets.to_i

# 10万ループ
q.times do
  a, b, c, d = gets.split.map(&:to_i)

  answer = sum[c][d] - sum[c][b - 1] - sum[a - 1][d] + sum[a - 1][b - 1]
  puts answer
end
