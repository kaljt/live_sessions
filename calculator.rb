def prompt(msg)
  Kernel.puts(">> #{msg}")
end

prompt('Welcome to calculator')

prompt 'Enter your first number:'

number1 = Kernel.gets.chomp

prompt("First Number: #{number1}")

prompt('Enter your second number:')

number2 = Kernel.gets

prompt("Second number: #{number2}")

prompt('What do you want to do? 1) add 2) subtract 3) multiply 4) divide :')

operator = Kernel.gets.chomp

if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
else
  result = number1.to_f / number2.to_f
end

# prompt("The result is #{result}")
message = <<-MSG
  The result was #{result}
  MSG

prompt(message)
