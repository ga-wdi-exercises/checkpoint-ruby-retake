# Question 4
# Assume the following array of hashes:

darling_children = [
  {first_name: 'Wendy'},
  {first_name: 'John'},
  {first_name: 'Michael'}
]

# Use `.each` to iterate over the `darling_children` array and add
# a full_name attribute to each value with ' Darling' added to each name.
# Example: {first_name: 'Wendy'} should be {first_name: 'Wendy', full_name: 'Wendy Darling'}
# Type your solution directly below this line:
darling_children.each do |name|
  full_name = [:first_name] + 'Darling'
end

# Question 5
# Assume the following array:

ages = [11, 9, 10, 8, 9]

# Use `.map` to iterate through the `ages` array and add 30 to each
# of each one. Assign the returned array to a variable called `older_ages`.
# Example: 11 should become 41 in the new array.
# Type your solution directly below this line:
older_ages = ages.map do |boys|
  boys + 30
end
