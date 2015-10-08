copperheads = [
"Joshua Abrams", "Syema Ailia", "Kris Bies", "Alexander Blair",
"Andrew Blum", "Jacob Boer", "Steven Broderick", "Ovi Calvo",
"Danielle Cameron", "Eran Chazan", "Jonathan Chen", "Un CHoi",
"Kevin Corso", "Eric Dell'Aringa", "Eunice Do", "Ronny Ewanek",
"John Paul Chaufan Field", "Eric Freeburg", "Jeffery George",
"Jamar Gibss", "Paul Gaston Gouron", "Gabrielle Gustilo",
"Marie-France Han", "Noah Heinrich", "Jack Huang", "Max Iniguez",
"Mark Janzer", "Michael Jasinski", "Lars Johnson", "Joshua Kim",
"James Kirkpatrick", "Christopher Lee", "Isaac Lee",
"Joseph Marion", "Kevin Mark", "Bernadette Masciocchi",
"Bryan Munroe", "Becca Nelson", "Van Phan", "John Polhill",
"Jeremy Powell", "Jessie Richardson", "David Roberts",
"Armani Saldana", "Chris Savage", "Parminder Singh", "Kyle Smith",
"Aaron Tsai", "Douglas Tsui", "Deanna Warren", "Peter Wiebe",
"Daniel Woznicki", "Jay Yee", "Nicole Yee", "Burno Zatta" ]

def acc_groups(arr)
  grouped_arr = []
  while arr.length > 0
    if (arr.length % 5 == 0) || (arr.length % 5 == 4) || (arr.length % 4 == 0)
      if arr.length % 5 == 0
        while arr.length > 0
          grouped_arr << arr.pop(5)
        end
      elsif cohort_size % 4 == 0
        while arr.length > 0
          cohort
        grouped_arr << arr.pop(4)
      else
        grouped_arr << arr.pop(5)
      end
    else
      grouped_arr << arr.pop(4)
    end
  end
  return grouped_arr
end

groups = acc_groups(copperheads)
groups.each {|a| p a.length }


# If the cohort size is divisible by four, divisible by five, or divisible by five with a remainder of four, then we go

# The input will be this array of names. The output will be an array that contains multiple arrays, with 4-5 people in each.
# The minimum viable product is this exactly.

# For more challenge, randomize the method. I want to be able to run the method multiple times and get different groups each time.