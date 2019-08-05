# Use reduce to Create a Transformed Hash
# Let's put all our bands' members' names in order and print the original and sorted Hashes. But reduce behaves a little funnily in Hashes so let's memorize a tricky bit of syntax.

bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry]
}
 
bands.reduce({}) do |memo, pair|
  p memo # First block parameter
  p pair # Second block parameter
  memo # Return value for the block. It becomes the memo in the next go-round
end

# As we can see, our "accumulating" Hash called memo is the thing we need to update. But in each call to our block, we receive the pair as a two-element Array. We'd like to split that into the key and the value. While we could use pair[0] and pair[1], Ruby provides a nicer way to do that work called "destructuring assignment."

bands.reduce({}) do |memo, (key, value)|
  p memo # First block parameter
  p key # Second block parameter
  p value # Second block parameter
  memo # Return value for the block, becomes the memo in the next go-round
end

# Thanks to destructuring assignment (using the parentheses), we crack open the Array that was in the pair parameter and put element 0 in key and element 1 in value. With this in place, it's easy to create that alphabetized roster.

sorted_member_list =  bands.reduce({}) do |memo, (key, value)|
  memo[key] = value.sort
  memo
end
 
p bands
p sorted_member_list



# Use reduce to Resolve a Value From a Hash
  
# With Hashes, we also use reduce to accumulate to a single value. Let's find first-most alphabetical band member of the entire Hash

bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry]
}
 
firstmost_name = bands.reduce(nil) do |memo, (key, value)|
  # On the first pass, we don't have a name, so just grab the first one.
  memo = value[0] if !memo
 
  # Sort that array of names
  sorted_names = value.sort
 
  # If string comparison says the sorted name of the array is earlier than
  # the memo, it becomes the new memo.
  memo = sorted_names[0] if sorted_names[0] <= memo
 
  # Return the memo as per reduce rules
  # (Try adding 'p' in front of memo to see how it changes as the enumerate the
  # pair of the hash!)
  memo
end
p firstmost_name
 
"andy"