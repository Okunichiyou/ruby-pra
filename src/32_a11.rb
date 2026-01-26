n, x = gets.split.map(&:to_i)
numbers = gets.split.map(&:to_i)

l = 0
r = n

loop do
  mid = (l + r) / 2
  if numbers[mid] == x
    puts mid + 1
    break
  elsif numbers[mid] > x
    r = mid - 1
  else
    l = mid + 1
  end
end
