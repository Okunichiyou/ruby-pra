# frozen_string_literal: true

puts '１つ目の値を入力してください'
str1 = $stdin.gets
puts str1

puts '２つ目の値を入力してください'
str2 = $stdin.gets
puts str2

$stdout.puts 'STDOUT!'
warn 'STDERR!'

puts ARGF.filename

while (line = ARGF.gets)
  puts line
end
