# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if (a + b) <= c
    return false
  elsif (a + c) <= b
    return false
  elsif (b + c) <= a
    return false
  else
    return true
  end
end