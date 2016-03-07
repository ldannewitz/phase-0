# I worked on this challenge [with: Kristal Lam].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c
    if a + c > b
      b + c > a ? true : false
    else
      false
    end
  else
    false
  end
end