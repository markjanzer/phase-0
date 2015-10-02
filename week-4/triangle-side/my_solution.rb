# I worked on this challenge with JP


# Your Solution Below

def valid_triangle?(a, b, c)
  if (a + b) <= c
    return false
  elsif (a + c) <= b
    return false
  elsif (b + c) <= a
    return false
  end
  true
end