# frozen_string_literal: false

def method1(a, *b)
  p a
  p b
  method2(*b)
end

def method2(c, *d)
  p c
  p d
end

method1(1, 2, 3)

def method3(a, **b)
  p a
  p b
  method4(**b)
end

def method4(**c)
  p c
end

method3(1, key1: :val1, key2: :val2)

# frozen_string_literalをtrueにするかfalseにするかで、同じオブジェクトIDが出力されるか、違うオブジェクトIDが出力されるか変わってくる
p 'text'.object_id
p 'text'.object_id

p :symbol.object_id
p :symbol.object_id

def method5(a, b, *c, d)
  puts a
  puts b
  puts c
  puts d
end

def method6(a, b, *c, **d)
  puts a
  puts b
  puts c
  puts d
end

method5(1, 2, 3, key1: 'val1', key2: 'val2')
method6(1, 2, 3, key1: 'val1', key2: 'val2')

require 'benchmark'

n = 100_000_000

Benchmark.bm do |r|
  r.report 'frozen' do
    n.times { 'Is the order a rabbit?'.freeze }
  end

  r.report 'mutable' do
    n.times { 'Is the order a rabbit?' }
  end
end
