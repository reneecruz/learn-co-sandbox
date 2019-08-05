# Use Integer's .times method to execute a loop n-times

n = 2 
count = 0 
while count <= n do 
  puts "I ran." 
  count = count + 1 
end

# There's lots of room for confusion here. We set count to 0 and count up to or equal n. That's a confusing way of saying "do something 3 times." Ruby agrees and lets us say:

3.times do 
  puts "I ran."
end

# This relies upon us using a method (you might recall 3.class or Time.now.year as being methods) called times that all Integers provide.

# Use loop to create an infinite loop

# Sometimes we want to create an infinite loop that we want to break from.

count = 0 
n = 3 
loop do 
  break if count >= n 
  puts "I ran." 
  count += 1 
end

# This could be duplicated with while...do...end, of course by giving while a permanently true condition expression:

count = 0 
n = 3 
while true do 
  break if count >= n 
  puts "I ran."
  count += 1 
end

# Programmers would say loop is more expressive of an intention to run infinitely and break on a condition. The while...do...end just happens to run forever. The intention of loop means "I intend to run forever." It's a nice way to communicate to other programmers what your intention is.

# Use until to repeat

# The repetition statement until is the inverse of a while loop.

# A while executes the block of code while the conditional expression is true.

# An until will execute a block until a specific condition is true. In other words, the block of code following until will execute while the condition is false. One helpful way to think about it is to read until as "if not".

counter = 0 
until counter == 20 
  puts "The current number is less than 20."
  counter += 1 
end