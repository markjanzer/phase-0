*What does puts do?*

Puts returns nil and prints to the console. By default, Ruby returns the last line of code evaluated. But if you puts the last line of code, then it will return nil instead of whatever the last line would have evaluated to.

*What is an integer? What is a float?*

An integer is a whole number, any number divisible by one that does not have a decimal point. A float is a number that is represented with a decimal point. These are generally not whole numbers, but they can be (eg. 1.0 is a float).

*What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?*

Integer division only accepts and returns whole numbers, while float division accepts and returns floats (most often not whole numbers). Each has their purpose.

I have $30 and I want to know how many $7 toy cars I can buy. Integer division works great here, I do 30/7 = 4. If I were to do float division I would get 4.2857143 cars (and even that number is rounded), but I don't care about that .286 of a car, because I can't buy that much of a toy car.

Now If I am dividing pizza between 8 people, I want to do float division. 1.0/8 = .125, or 12.5% of the pizza. If I did integer division then 1/8=0, and nobody would get any pizza!

Hours in a year:

'''
puts 365*24
'''

Minutes in a decade:

'''
puts 10*365*24*60
'''

***

*How does Ruby handle addition, subtraction, multiplication, and division of numbers?*

By default, Ruby will only return integers and Ruby will round down by default. You can indicate that you want Ruby to return a non-integer by setting one of the input numbers to be a float. You can do this one of two ways (that I know of): 8 -> 8.to_f, or 8 -> 8.0.

*What is the difference between integers and floats?*

Integers are numbers that are not defined with decimals and thus are whole numbers, divisible by one. Floats are numbers that are defined using decimals, and they may or may not be integers.

*What is the difference between integer and float division?*

Integer division rounds down to the nearest integer, float division does not.

*What are strings? Why and when would you use them?*

Strings are packets of characters contained between quotations marks. They are good for putting messages back to the user, and they are good to hold onto information that someone inputs.

*What are local variables? Why and when would you use them?*

Local variables are variables that are defined within a program. I would use them whenever I want the computer to remember a value. I would use them whenever I find that I'm repeating myself. I could use them for counters or for storage of strings or numbers.

*How was this challenge? Did you get a good review of some of the basics?*

This challenge was a nice review. I had forgotten a few methods, and it was a nice introduction to Rspec.