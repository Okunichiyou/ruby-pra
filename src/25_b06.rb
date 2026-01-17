count = gets.to_i
lottery_results = gets.chomp.split.map(&:to_i)
q_count = gets.to_i

questions = []


# lottery_resultsの最大 10 ** 5
q_count.times do
  l, r = gets.chomp.split.map(&:to_i)
  questions << [l, r]
end

sums = [0]

# lottery_resultsの最大 10 ** 5
lottery_results.each_with_index do |el, i|
  sums[i+1] = sums[i] + el
end

# questionsの最大 10 ** 5
questions.each do |l, r|
  drawable = (r.to_f - l.to_f + 1) / 2
  score = sums[r].to_f - sums[l - 1].to_f
  if score == drawable
    puts "draw"
  elsif score > drawable
    puts "win"
  else
    puts "lose"
  end
end

# 最大 30万ループ
