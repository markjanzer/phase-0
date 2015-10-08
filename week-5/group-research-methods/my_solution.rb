# Research Methods

# I spent [1.5] hours on this challenge.


# Person 3
# I want this method to alphabetizes an array
def my_array_sorting_method(source)
  source.sort_by do |w|
    w.to_s
  end
end

def my_hash_sorting_method(source)
  source.sort_by { |name, age| age }
end

# a_test = ["hi", "there", "how", "are", "your", "2", "Cats?"]
# h_test = {cookie: 5, thuglyfe: 25, big_mac: 100, kitty: 20, lucky_fly: 1}




# Identify and describe the Ruby method(s) you implemented.

# The first method I used was .sort_by. When applied to arrays, sort automatically sorts an array alphabetically with numbers (in strings) followed by Capitalized letters, followed by lower case letters. The issue is that sort cannot compare numbers to strings. When using sort by, you declare the variable to represent each element in the pipes ||. You can then alter this element. I used w for word. If after it, I just printed w, it would be no different than .sort. But I did changed every value to a string with .to_s before comparing them.

# The second method I used was .sort_by. When applied to hashes, it allows you to choose how what you want to sort the hash with. Within the ||, you have to name two variables, the first will be the key and the second will be the value. If you then type the value variable, it will sort by value, but if you used key it would sort by key. It returns the value as an array of arrays, containing the key followed by the value in each.

# I had a relatively simple implementation of sort_by, but it is a very flexible and powerful method. It is easy to get bogged down in the ruby docs with it, so I would suggest also checking stack overflow for examples.



# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
# I covered this earlier, but I guess I'll take this time to re-hash the important concept of how to use .sort_by.

# After the sort_by you can begin a block with do and end or {}. The first thing you do is give variable names that will be the placeholder values for every item that is iterated through. With hashes this is |key, value|, while with arrays it is |value|, but you can name them whatever you want. You can choose what you want to sort by using these variables. For instance, if you wanted to sort by the length of the keys in an hash, you could do :
# hash.sort_by { |k, v| k.length }
# Hope this helps!


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# I realized that I am not sure about the terminologoy of those blocks that are surrounded by curly braces. I also learned that .sort will not work with both integers and strings, and you have to convert them yourself. Finally, I felt that as much as I explained things, I think the most useful thing I did was show an example.
#
#