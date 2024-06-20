# frozen_string_literal: false

require 'benchmark'
n = 10_000
m = 1000

Benchmark.bm do |r|
  r.report 'String#concat' do
    n.times do
      x = ''
      m.times do
        x.concat('a')
      end
    end
  end

  r.report 'String#<<     ' do
    n.times do
      x = ''
      m.times do
        x << 'a'
      end
    end
  end

  r.report 'String#+' do
    n.times do
      x = ''
      m.times do
        x += 'a'
      end
    end
  end
end

Benchmark.bm do |r|
  r.report 'Array#push' do
    n.times do
      arr = []
      m.times do
        arr.push('a')
      end
    end
  end

  r.report 'Array#<<' do
    n.times do
      arr = []
      m.times do
        arr << 'a'
      end
    end
  end

  r.report 'Array#+=' do
    n.times do
      arr = []
      m.times do
        arr += ['a']
      end
    end
  end
end

# 実行結果
# vscode ➜ /workspaces/1day-1script (main) $ ruby ruby/1_bench_mark.rb
#        user     system      total        real
# String#concat  0.629404   0.003988   0.633392 (  0.633457)
# String#<<       0.528273   0.004000   0.532273 (  0.532277)
# String#+  0.926928   0.004018   0.930946 (  0.930943)
#        user     system      total        real
# Array#push  0.503013   0.000000   0.503013 (  0.503033)
# Array#<<  0.447405   0.000000   0.447405 (  0.447397)
# Array#+=  2.230968   0.000000   2.230968 (  2.230977)
#
# 学び
# ・インスタンスを作る処理は速度が遅い
# ・frozen_string_literal: trueにすると、以下のようなエラーが発生した
#
# vscode ➜ /workspaces/1day-1script (main) $ ruby ruby/1_bench_mark.rb
#        user     system      total        real
# String#concatruby/1_bench_mark.rb:12:in `concat': can't modify frozen String: "" (FrozenError)
#         from ruby/1_bench_mark.rb:12:in `block (4 levels) in <main>'
#         from <internal:numeric>:237:in `times'
#         from ruby/1_bench_mark.rb:11:in `block (3 levels) in <main>'
#         from <internal:numeric>:237:in `times'
#         from ruby/1_bench_mark.rb:9:in `block (2 levels) in <main>'
#         from /usr/local/lib/ruby/3.3.0/benchmark.rb:298:in `measure'
#         from /usr/local/lib/ruby/3.3.0/benchmark.rb:380:in `item'
#         from ruby/1_bench_mark.rb:8:in `block in <main>'
#         from /usr/local/lib/ruby/3.3.0/benchmark.rb:178:in `benchmark'
#         from /usr/local/lib/ruby/3.3.0/benchmark.rb:210:in `bm'
#         from ruby/1_bench_mark.rb:7:in `<main>'
