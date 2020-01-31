require 'benchmark'

def fib(n)
  return 1 if n < 2
  fib(n - 1) + fib(n - 2)
end

count = ARGV[0].to_i

result = Benchmark.realtime do
  p fib(count)
end

puts "処理時間 #{result} s"
