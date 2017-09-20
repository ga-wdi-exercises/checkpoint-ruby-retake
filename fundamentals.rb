# Question 1
# Define a method called `is_rainy`, which should take one argument named `weather` (String).
# When called the method should return:
# true (boolean) if the `weather` is `rainy` or false (boolean) if it is not rainy
# Type your solution directly below this line:
def is_rainy(weather)
  if weather == "rainy"
     return true
   else
     return false
   end
end

#Question 2
#Assume the following hash...

town = {
  residents: ["Maurice", "Belle", "Gaston"],
  castle: {
    num_rooms: 47,
    other_residents: ["Robby Benson"],
    guests: []
  }
}


# Using Ruby...
# - Remove "Maurice" from `residents`
# - Add "Maurice" to the `other_residents` array
# Type your solution directly below this line:
(town[:residents]).delete("Maurice")
(town[:castle][:other_residents]).push("Maurice")


# Question 3
# Assume you have an array of strings representing instructors' names...

instructors = ["Ali", "Mike", "James", "Andy", "John", "Juan"]

# Using a loop and string interpolation, print each string in `friends` to the Terminal...
# "Ali is an instructor"
# "Mike is an instructor"
# "James is an instructor"
# "Andy is an instructor"
# "John is an instructor"
# "Juan is an instructor"
# Type your solution directly below this line:
for melley in instructors do
puts melley + " is an instructor"
end
