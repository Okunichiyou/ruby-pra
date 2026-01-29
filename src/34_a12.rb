n, k = gets.split.map(&:to_i)

a_arr = gets.chomp.split.map { Rational(1, it.to_i) }

puts (k / a_arr.sum).ceil
