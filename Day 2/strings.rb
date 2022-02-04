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
puts "Second position is " + string[2]
puts "first position is " + fullname[0]

array = ["a", "b", "c"]

puts array.map { |string| string.upcase }
 
# ["A", "B", "C"]
#Last position is -1
puts "the last position is " + string[-1]
puts "the second last position is " + string[-2]

#Check for the Starting Characters in a String 
puts string.start_with?("h")

#Check if a String is included in another String
puts string.include?("headphone")

#Convert String to Characters
characters = fullname.chars
puts "Printing all characters"
puts characters

puts "printing 3rd character"
puts characters[2]

#Interpolation using double quoted string
#Interpolation only works if the string is using double quotes

greet = "Good Morning " + fname #or
greet1 = "Good Morning #{fname}"
puts greet
puts greet1

puts "Current time is #{Time.now}"

movie = "Gone with the wind"
puts "We are going to watch #{movie}"

city = "Tokyo"
country = "Japan"
puts "#{city} is the capital of #{country}"

