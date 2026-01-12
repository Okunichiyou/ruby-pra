# frozen_string_literal: true

# 元クラス
class GrandParent
  def puts_sample
    puts 'grand_parent_sample'
  end
end

# 親クラス
class Parent < GrandParent
  def puts_sample
    puts 'parent_sample'
  end
end

# 子クラス
class Child < Parent
  def puts_sample
    super
    puts 'child_sample'
  end
end

c = Child.new
c.puts_sample
