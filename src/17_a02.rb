t = gets.split[1].to_i
line = gets.split.map(&:to_i)
if line.include?(t)
  puts "Yes"
else
  puts "No"
end