_ = gets
combinations = gets.split.map(&:to_i).combination(3).to_a
puts combinations.any? { it.sum == 1000 } ? "Yes" : "No"