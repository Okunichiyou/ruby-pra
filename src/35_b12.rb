n = gets.to_i

# 配列がデカすぎる
arr = 0.step(n, 0.001).to_a

left = 0
right = n * 1000 - 1

def calc(x)
  x**3 + x
end

# 28回 = log2(100,000 * 1000)
while left < right
  mid = (left + right) / 2

  if calc(arr[mid]) > n
    right = mid
  else
    left = mid + 1
  end
end

puts right / 1000.0
