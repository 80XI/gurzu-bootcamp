require 'benchmark'
# Concatinate String
fname = "Salil"
lname = "Kayastha"
fullname = fname + " " + lname
puts fullname

 name = "Salil Kayastha"
 greeting_style = "Hello"
 greeting = greeting_style + " " + name
 puts greeting
 capitalize
 # Reversing a String
 reversed_string = "Hello Ruby".reverse
 puts reversed_string
 
 #Convert all strings to Uppercase
 puts uppercase = fullname.upcase

 #Convert all strings to Lowercase
 puts uppercase.downcase
 
 #Remove spaces in string ?
 puts "  Sanitizer   ".strip

 #Convert number to string (.to_s)
 puts "Ruby is " + 24.to_s + "years old"

 #Convert string into number (.to_i)
 puts "12".to_i + 2

 #Capitalize the first letter of a String (.capitalize)
 puts "flowerhorn".capitalize

 # Running multiple methods one after another (.)
 puts fullname.upcase.downcase.capitalize

 #First position is zero
 string = "headphone"
 puts string[2]
 puts fullname[0]

 array = ["a", "b", "c"]

 puts array.map { |string| string.upcase }
 
 # ["A", "B", "C"]





