# I worked on this challenge [with: Kristal Lam].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c
    if a + c > b
      if b + c > a
        true
      else
        false
      end
    else
      false
    end
  else
    false
  end
end