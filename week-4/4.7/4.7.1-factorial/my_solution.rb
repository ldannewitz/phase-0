# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  # if number == 0
  result = 1

  # loops counting down to number
  # multiply by each number
  # decrease number

  while number > 1
    result = result * number
    number -= 1
  end

  return result
end