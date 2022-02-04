require 'benchmark'

input = ("a".."z").map {|letter| [letter, letter]}.to_h
puts input


 puts input.map { |key, value| [key.to_sym, value] }.to_h

 puts Benchmark.measure { "a"*1_000_000_000 }