# Leap Years

# I worked on this challenge [by myself, with: ].


# Your Solution Below

def leap_year? (year)
  if year % 4 == 0  #it is a leap year
    if year % 100 == 0 #except centuries also need to be divis by 400
      if year % 400 == 0
        return true
        #leap year
      else
        return false

      end
    end
    return true


  end
  return false

end