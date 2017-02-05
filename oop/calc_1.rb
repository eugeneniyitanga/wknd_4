# Below, we have two types of calculators. The simple one can perform basic arithmetic, 
# while the fancy one can also do square roots in addition to basic arithmetic.
# There is nothing wrong with the code below per se, but there is duplication
# between the two classes, since they each contain four identical methods.
# This is generally considered to be a code design flaw, since there may come
# a time where we decide to change how these methods work, and we may accidentally
# update the methods in one class, and forget to update them in the other, and our
# two classes become out of sync. This known as the DRY principle, that is:
# Don't Repeat Yourself.
# There are a number of techniques that we can use to fix this example. One is 
# a fundamental concept in OOP known as Inheritance. Your exercise is to research 
# Inheritance in Ruby, and use it to remove the duplication (or DRY up) the code 
# below. You must also write the driver code to test your classes.

class SimpleCalculator

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

class FancyCalculator <SimpleCalculator


  def square_root(number)
    Math.sqrt(number)
  end

end

# Write your own driver code below:

simplecalculator = SimpleCalculator.new 
fancycalculator = FancyCalculator.new 

add = fancycalculator.add(10, 6)
subtract = fancycalculator.subtract(24, 4)
multiply = fancycalculator.multiply(2,4)
divide = fancycalculator.divide(15, 3)
square_root = fancycalculator.square_root(5)

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

if result == 25 
puts "Success"

else 
  "F"
end 

