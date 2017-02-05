# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

require "./module.rb"

class SimpleCalculator

include Calculators 

end

class FancyCalculator <SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator <FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

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