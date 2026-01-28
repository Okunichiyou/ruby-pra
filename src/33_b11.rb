n = gets.to_i
# O(N) = 10万回
numbers = gets.split.map(&:to_i)

# O(N log N) 166万回 = 100,000 × 16.6
numbers.sort!

q = gets.to_i
# 10万回ループ
q.times do
  x = gets.to_i

  l = 0
  r = n

  # log N 回ループ = 16.6回
  # l == rになった時に終了する
  while l < r
    mid = (l + r) / 2
    if numbers[mid] >= x
      r = mid
    else
      # l < rの間、mid >= l、mid < r。なので、l = mid + 1したところで、lがrを超えることはない
      l = mid + 1
    end
  end
  puts l
end
