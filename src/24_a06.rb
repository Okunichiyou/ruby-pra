n, q = gets.chomp.split.map(&:to_i)
attendees = gets.chomp.split.map(&:to_i)

questions = []
q.times do
  l, r = gets.chomp.split.map(&:to_i)
  questions << { start: l, end: r }
end

amount_days = [0]

n.times do |i|
  sum = amount_days[i] + attendees[i]
  amount_days << sum
end

questions.each do |question|
  puts (amount_days[question[:end]] - amount_days[question[:start]]) + (amount_days[question[:start]] - amount_days[question[:start] - 1])
end

# 元々書いてた以下のコードはパフォーマンスが非常に悪くてタイムアウトになっていた
# _n, q = gets.chomp.split.map(&:to_i)
# attendies = gets.chomp.split.map(&:to_i)

# questions = []
# q.times do
#   l, r = gets.chomp.split.map(&:to_i)
#   questions << { start: l - 1, end: r - 1 }
# end

# questions.each do |question|
#   puts attendies[question[:start]..question[:end]].sum
# end
