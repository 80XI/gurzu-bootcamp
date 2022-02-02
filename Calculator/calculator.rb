operation = ["1. Addition", "2. Subtraction", "3. Division", "4. Multiplication"]
puts operation[0..3]
in_operation = gets.chomp
ary =  in_operation.to_i-1
puts operation[ary]

puts "Enter first number"
num1 = gets.chomp
puts "Enter second number"
num2 = gets.chomp

if in_operation == 1 then
    addition_function
end
if in_operation == 2 then
    subtraction_function
end
if in_operation == 3 then
    division_function
end
if in_operation == 4 then
    multiplication_function
end


def addition_function
    @n1 = num1
    @n2 = num2
    @result = @n1 + @n2
    puts "The answer is #{@result}"
end

def subtraction_function
    @n1 = num1
    @n2 = num2
    @result = @n1 - @n2
    puts "The answer is #{@result}"
end

def division_function
    @n1 = num1
    @n2 = num2
    @result = @n1 / @n2
    puts "The answer is #{@result}"
end

def multiplication_function
    @n1 = num1
    @n2 = num2
    @result = @n1 * @n2
    puts "The answer is #{@result}"
end
#clear screen?