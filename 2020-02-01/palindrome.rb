require 'benchmark'

def palindrome(word)
  return true if word.length < 1
  return false if word[0] != word[-1]
  palindrome(word[1...-2])
end

palindrrome_word = ARGV[0]

result = Benchmark.realtime do
  puts palindrome(palindrrome_word)
end

puts "処理時間 #{result} s"


