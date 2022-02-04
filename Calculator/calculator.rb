operation = ["1. Addition", "2. Subtraction", "3. Division", "4. Multiplication"]
puts operation[0..3]
in_operation = gets.chomp.to_i
ary =  in_operation.to_i-1
puts operation[ary]
fun = in_operation.to_i


puts "Enter first number"
$num1 = gets.chomp.to_i
puts "Enter second number"
$num2 = gets.chomp.to_i

def addition_function(n1, n2)
    @n1 = n1
    @n2 = n2
    @result = @n1 + @n2
    puts "The answer is #{@result}"
end

def subtraction_function(n1, n2)
    @n1 = n1
    @n2 = n2
    @result = @n1 - @n2
    puts "The answer is #{@result}"
end

def division_function(n1, n2)
    @n1 = n1
    @n2 = n2
    @result = @n1 / @n2
    puts "The answer is #{@result}"
end

def multiplication_function(n1, n2)
    @n1 = n1
    @n2 = n2
    @result = @n1 * @n2
    puts "The answer is #{@result}"
end


if fun == 1 then
    addition_function($num1, $num2)
    
end
if fun == 2 then
    subtraction_function($num1, $num2)
end
if fun == 3 then
    division_function($num1, $num2)
end
if fun == 4 then
    multiplication_function($num1, $num2)
end

system("clear")
