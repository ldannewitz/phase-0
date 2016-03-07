# Leap Years

# I worked on this challenge [with: Kristal Lam].


# Your Solution Below

def leap_year?(year)
  if year % 4 == 0
      year % 100 != 0 || year % 400 == 0 ? true : false
  else
    false
  end
end