# Conclusion
# There are a number of methods we can use to rearrange, retrieve and count elements in an array. With .sort, .reverse, .first, .last, .include? and .size, we can easily get the information from an array that we need.

# Sort an Array
# Sometimes we need to rearrange the contents of an array in a certain order: for strings, this means alphabetically, and for numerical values, this means from smallest number to highest number.

famous_cats = ["lil' bub", "grumpy cat", "maru"]
famous_cats.sort
  # => ["grumpy cat", "lil' bub", "maru"]
  
  # Because sort returns a new array, we generally store it in another variable.

sorted_cats = famous_cats.sort

# Now we have two copies of the array. One unsorted (famous_cats) and one sorted (sorted_cats).

# If you don't need the unsorted version of the array you can call sort!. This will sort the existing array without requiring you to save the return into a new variable. The ! (called "bang") is a Ruby convention that indicates the method will do the operation in place. It will modify the receiver of the method (or the thing to the left of the dot).

# Reverse an Array

famous_wizards = ["Dumbledore", "Gandalf", "Merlin"]
famous_wizards.reverse
  # => ["Merlin", "Gandalf", "Dumbledore"]

# Find the First and Last Elements of an Array

# We've got two useful methods that give us the first and last elements of an array.

# The .first method will return the first element of an array. As with the other methods we've seen here, it does not change the return value of the original array.


famous_cats = ["lil' bub", "grumpy cat", "Maru"]
famous_cats.first
  # => "lil' bub"
  
# The .last method will return the last element of an array. It also does not change the return value of the original array
  
famous_cats = ["lil' bub", "grumpy cat", "Maru"]
famous_cats.last
 #  => "Maru"
 
 # Find Out If an Element Is in an Array
 
 # The .include? method will return a boolean of whether or not the array contains (or ​includes) the element submitted to it inside the parentheses.
 
famous_cats = ["lil' bub", "grumpy cat", "Maru"]
famous_cats.include?("Garfield")
  # => false
famous_cats.include?("Maru")
  # => true

# Unfortunately, Garfield is not in this famous_cats array. Since we are just returning true or false, the receiver of the method, famous_cats, remains unchanged.

# Find the Size of an Array
# Sometimes we need a quick way to know how large an array is. In those cases we can use the .size method, which will return the number of elements in the array.