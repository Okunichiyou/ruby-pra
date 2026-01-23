h, w, n = gets.split.map(&:to_i)

# 2次元差分配列を初期化（1-indexedにするため+2のサイズ）
diff = Array.new(h + 2) { Array.new(w + 2, 0) }

# N日分の積雪を差分配列に記録
n.times do
  a, b, c, d = gets.split.map(&:to_i)
  # 長方形(a,b)-(c,d)に+1するための差分処理
  diff[a][b] += 1
  diff[a][d + 1] -= 1
  diff[c + 1][b] -= 1
  diff[c + 1][d + 1] += 1
end

# 差分配列から実際の値を計算（2次元累積和）
grid = Array.new(h + 1) { Array.new(w + 1, 0) }

1.upto(h) do |i|
  1.upto(w) do |j|
    diff[i][j] += diff[i - 1][j] + diff[i][j - 1] - diff[i - 1][j - 1]
    grid[i][j] = diff[i][j]
  end
end

# 結果を出力
1.upto(h) do |i|
  row = []
  1.upto(w) do |j|
    row << grid[i][j]
  end
  puts row.join(' ')
end
