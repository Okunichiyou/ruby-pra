n = gets.to_i

left = 0.0
right = n.to_f
eps = 1e-6

def calc(x)
  x**3 + x
end

while right - left > eps
  mid = (left + right) / 2.0

  if calc(mid) > n
    right = mid
  else
    left = mid
  end
end

puts left
