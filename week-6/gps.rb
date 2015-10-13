# Your Names
# 1) Mark Janzer
# 2) Jamar Gibbs

# We spent 2.25 hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, ing_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if library.has_key?(item_to_make) == false
    raise ArgumentError.new("This food is not a valid input")
  end

  ing_required = library[item_to_make]
  leftover_ing = ing_quantity % ing_required

  if leftover_ing <= 4
    suggest = "#{leftover_ing} Cookies"
  elsif leftover_ing <= 5
    suggest = "bake a cake"
  elsif leftover_ing == 6
    suggest = "bake a cake and a cookie"
  else
    suggest = "bake a pie"
  end

  if leftover_ing == 0
    return "Calculations complete: Make #{ing_quantity/ing_required} of #{item_to_make}"
  else
    return "Calculations complete: Make #{ing_quantity/ing_required} of #{item_to_make}, you have #{leftover_ing} leftover ingredients. Suggested baking items: #{suggest}."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("pie", 20)
p serving_size_calc("pie", 2107)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# test = {a: 1, b: 2, c: 3}
# test.each do |something|
#   puts something
# end

#  if serving_size_mod == 0
#     return calculations
#  else
#     return leftover suggestions and such

# What did you learn about making code readable by working on this challenge?
# When I thought about readable code before, I thought much more about syntax than about sensical uses of methods and loops. This challenge helped me recognize how poor logic can render code nearly unreadable.

# Did you learn any new methods? What did you learn about them?
# I learned about .has_key? and .values_at. .has_key? Seems like the most useful method to find a key in a hash. Also .values_at seems like a great way to get multiple values from multiple keys, but a terrible way to find one value from a key.

# What did you learn about accessing data in hashes?
# I learned that if you do .each with only one variable in the pipes, the variable will be an array with the key as the first item and and a value as the second. However, if you give it two variables between the pipes, the first will act as the key and the second as the value.

# What concepts were solidified when working through this challenge?
# I think it solidified the importance of well named variables. All logic aside, one of the most confusing things was the poorly named variables. The name of the method itself still isn't great, but we let that one stand.