frozen = "text".freeze

puts frozen.frozen?

unfrozen = +frozen
puts unfrozen.frozen?

frozen2 = frozen
puts frozen2.frozen?

frozen = "text2"

puts frozen2

# frozen_string_literal: true

f = "sample"
puts f.frozen?

f.freeze
f.frozen?

puts f + "hoge"
puts f

puts f << "bar"
puts "エラーで呼ばれない"