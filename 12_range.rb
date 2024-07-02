# frozen_string_literal: true

('a'..'z').each do |i|
  p i
end

# これも動く
('あい'..'おか').each do |i|
  p i
end

# まさかの漢字も出力される
('鳕'..'鳥').each do |i|
  p i
end
