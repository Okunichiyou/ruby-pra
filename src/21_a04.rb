a = gets.to_i

result = ""

loop do
  div, mod = a.divmod(2)
  result.prepend(mod.to_s)
  a = div
  break if div.zero?
end

puts "0" * (10 - result.size) + result