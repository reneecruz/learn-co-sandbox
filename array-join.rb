# Conclusion
# These methods and the Array word literal are tools to help you accomplish programming tasks when working with text. There's a lot more to learn, but these are a good start.

# Join Elements of an Array With join to Produce a String

["This", "is", "a", "test"].join(' ') #=> "This is a test"
["This", "is", "a", "test"].join('_') #=> "This_is_a_test"
["This", "is", "a", "test"].join('*') #=> "This*is*a*test"

# Create an Array of Words with Ruby's %w// Literal
# Creating an Array of words can be difficult to type with all those " characters rolling about. Ruby invented an operator called the Array of Words literal.

%w[this is also a test] #=> ["this", "is", "also", "a", "test"]
# For method-chaining fun:
%w[this is also a test].join(" ").capitalize #=> "This is also a test"

# Split a String into an Array of words
# If Array's join can turn an Array of Strings into one String, we can reverse the process with String's split method:

"When in the course of human events".split(" ") #=> ["When", "in", "the", "course", "of", "human", "events"]
