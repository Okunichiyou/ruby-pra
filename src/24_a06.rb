# 日数と参加者の入出力処理
days_count, queries_count = gets.chomp.split.map(&:to_i)
daily_participants = gets.chomp.split.map(&:to_i)

# クエリ（範囲指定）を読み込み
queries = []
queries_count.times do
  left, right = gets.chomp.split.map(&:to_i)
  queries << { start: left, end: right }
end

# 累積和を計算（0から開始）
cumulative_sum = [ 0 ]
days_count.times do |day_index|
  total = cumulative_sum[day_index] + daily_participants[day_index]
  cumulative_sum << total
end

# 各クエリに対して範囲の参加者数を計算
queries.each do |query|
  start_day = query[:start]
  end_day = query[:end]

  # 範囲内の参加者数を計算
  total_in_range = cumulative_sum[end_day] - cumulative_sum[start_day - 1]

  puts total_in_range
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
