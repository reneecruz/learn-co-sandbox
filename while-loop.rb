# Repetition Statement with the While Loop

count = 0 # a bit of data defined outside the loop

while count < 3 do # a Boolean expression using the bit of data
  puts "I am the #{count}, I love to count!" # work
  count = count + 1 # a bit of work that moves the data closer to being false
end

# alternate, using the Mutating Assignment Operator +=, we can link addition (or any other operation) AND assignment! Like a contraction.
# count += 1 will take the value of count, add one to it and then re-assign that result to count

count = 0 

while count < 3 do
  puts "I am the #{count}, I love to count!"
  count += 1
end

#Terminate a while...do...end Loop With break Statement
# The while should cover the general case including when to repeat and when to finish. A break is for priority or anomalous interruption. 

# LEARNING NOTE: In the code below we're using a statement modifier and an equality-testing (Boolean) expression.

magic_exit_number = 7
count = 0 
while count < 10 do
  break if count == magic_exit_number # Learning Note
  puts "I am the #{count}, I love to count!" # work
  count = count + 1 
end

#  another way of writing this that keeps the condition expression all in one place would be:

magic_exit_number = 7 
count = 0 
while count < 10 && count != magic_exit_number do 
  puts "I am the #{count}, I love to count!" # work
  count = count + 1 
end