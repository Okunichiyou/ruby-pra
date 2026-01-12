# frozen_string_literal: true

require 'benchmark'

# 出力結果
# user     system      total        real
# Array#uniq  3.284803   0.004001   3.288804 (  3.288855)
# Array#uniq!  0.071689   0.000000   0.071689 (  0.071692)

Benchmark.bm do |r|
  n = 1_000_000
  r.report 'Array#uniq' do
    arr = ['1'] * 100 + ['2'] * 100
    n.times do
      arr.uniq
    end
  end

  r.report 'Array#uniq!' do
    arr = ['1'] * 100 + ['2'] * 100
    n.times do
      arr.uniq!
    end
  end
end
