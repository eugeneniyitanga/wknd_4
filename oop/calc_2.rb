# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)

class SimpleCalculator

  require "./module.rb"
  require "./simple_calculator.rb"
  require "./fancy_calculator.rb"

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

  def square_root(number)
    Math.sqrt(number)
  end

end

# Copy your driver code from the previous exercise below:

simplecalculator = SimpleCalculator.new 
fancycalculator = FancyCalculator.new 

add = fancycalculator.add(10, 6)
subtract = fancycalculator.subtract(24, 4)
multiply = fancycalculator.multiply(2,4)
divide = fancycalculator.divide(15, 3)
square_root = fancycalculator.square_root(4)

result = add 

puts "fancycalculator returned:"
puts result 

if result == 16 
  puts "Success"

else 
  "F"

end 

result = subtract 

puts "fancycalculator returned:"
puts result 

if result == 20 
  puts "Success"

else 
  "F"
end 

result = multiply 

puts "fancycalculator returned:"
puts result 

if result == 8 
  puts "Success"

else 
  "F"
end 

result = divide 

puts "fancycalculator returned:"
puts result 

if result == 5 
  puts "Success"

else 
  "F"
end 

result = square_root


puts "fancycalculator returned:"
puts result 

if result == 2
puts "Success"

else 
  "F"
end 

