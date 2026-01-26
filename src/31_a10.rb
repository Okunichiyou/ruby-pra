n = gets.to_i
a = gets.split.map(&:to_i)
d = gets.to_i

prefix_max = Array.new(n + 1, 0)
# 10万ループ
(1..n).each { prefix_max[it] = [prefix_max[it - 1], a[it - 1]].max }

suffix_max = Array.new(n + 2, 0)
n.downto(1) { suffix_max[it] = [suffix_max[it + 1], a[it - 1]].max }

# 10万ループ
d.times do
  l, r = gets.split.map(&:to_i)
  puts [prefix_max[l - 1], suffix_max[r + 1]].max
end
