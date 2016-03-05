# Factorial

# I worked on this challenge [with Alex Wen].

# Your Solution Below
# Because 0 factorial = 1, set default result to 1
# loop counting down to number
# multiply by each number
# decrease number

def factorial(number)
  result = 1

  while number > 1
    result = result * number
    number -= 1
  end

  return result
end