# frozen_string_literal: true

module SampleModule
  def sample_method
    puts 'Sample Module'
  end
end

class SampleParent
  def sample_method
    puts 'Sample Parent'
  end
end

class SampleClass < SampleParent
  include SampleModule
end

s = SampleClass.new
s.sample_method
