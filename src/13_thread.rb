# frozen_string_literal: true

p Thread.main
Thread.new { 'Hello World' }
Thread.fork { 'Good World' } # forkは、基本的に Thread.new と同じですが、 new メソッドと違い initialize メソッドを呼びません。
p Thread.list

def time1
  sleep(2)
  puts Time.now.strftime('%H時%M分%S秒')
end

def time2
  sleep(2)
  puts Time.now.strftime('%H時%M分%S秒')
end

threads = []
threads << Thread.new { time1 }
threads << Thread.fork { time2 }
threads.each(&:join)
