array = ["a", "b", "c"]
array1 = [1, 2, 3, 4]

puts array.map { |string| string.upcase }
puts array1.map {|n| n * 2}

hash = { bacon: "protein", apple: "fruit" }
puts hash.map { |k,v| [k, v.to_sym] }.to_h

puts array1.each { |n| n * 2 }
# [1, 2, 3]
puts array1.map { |n| n * 2 }
# [2, 4, 6]