puts '文字の種類をカウントするので、英文を入力して'

input = gets

splited_words = input.downcase.split(/[,.\s]+/)

counts_hash = {}

splited_words.each do |word|
  counts_hash[word] ||= 0
  counts_hash[word] += 1
end

counts_hash.each do |word, count|
  puts "#{word} count is #{count}"
end
