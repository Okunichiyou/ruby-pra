a, b = gets.split.map(&:to_i)

(a..b).each do |i|
  if 100 % i == 0
    return puts "Yes"
  end
end

puts "No"