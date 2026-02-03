n = gets.to_i
arr = gets.split.map(&:to_i)

uniq_arr = arr.uniq.sort

# 最大10万ループ
output = arr.map do |x|
  # log2(10**9)
  uniq_arr.bsearch_index { |y| y >= x } + 1
end

puts output.join(' ')
