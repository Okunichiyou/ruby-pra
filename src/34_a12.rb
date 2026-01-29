n, k = gets.split.map(&:to_i)
a_arr = gets.split.map(&:to_i)

# 時間tで印刷できる枚数を計算
def count_prints(a_arr, t)
  a_arr.sum { |a| t / a }
end

# 二分探索
left = 0
right = a_arr.min * k

# 最大 30回 = log (10 ** 9)
while right - left > 1
  mid = (left + right) / 2
  if count_prints(a_arr, mid) >= k
    right = mid
  else
    left = mid
  end
end

puts right
