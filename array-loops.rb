# Conclusion
# Loops are a powerful tool for working with arrays. With just a small amount of code, we perform operations on every element in an array, regardless of how many elements there are!

# Abstracting Array Output
# Given our pets array, it would be great to simply say "for every element in this array, output the element to the terminal." This way, even if the array changed, we'd always output each and every element.

# With loops, we can do this! A very basic example would be a while loop with a counter:

counter = 0
pets = ["Dog", "Cat", "Fish", "Bird", "Hamster"]
 
while pets[counter] do
  puts pets[counter]
  counter += 1
end

# We could go further than this, though, by placing our while loop in a method. Instead of just a pet printer, we can turn this code into an all purpose element printer:

def output_array_elements(array)
  counter = 0
 
  while array[counter] do
    puts array[counter]
    counter += 1
  end
end

# Looping Using the Array Length Method

# An common alternative to the previous example is to utilize the methods built in to the Ruby Array class. Specifically, in these situations, we want to loop as many times are there are elements. To find out how many elements are in an array, we can use the length method:

array = ["Spring", "Summer", "Fall", "Winter"]
array.length
#=> 4

# Note: Ruby arrays also have methods called size and count that all perform the same function - return the number of elements in the array.

# Now that we can get the length, we would want to structure our loop so that we compare the value of counter with this length value. Updating the method from the previous section, this might look something like:

def output_array_elements(array)
  counter = 0
 
  while counter < array.length do
    puts array[counter]
    counter += 1
  end
end

# As long as counter is less than the return value of array.length, the loop will execute.

# Iteration
# Using a loop to access each element in an array is very common in programming and is generally referred to as iteration. We iterate over each element, in these examples, printing out the values. In other examples, we might want to iterate over an array and update each element's value. If the values were numbers, we could do things like sum all the values together using while loops and basic iteration.

