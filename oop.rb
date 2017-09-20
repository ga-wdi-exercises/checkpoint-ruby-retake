# Question 6
# Define a Ruby class called `Animal`. Each `Animal` should have...
# - A `color` (String) attribute
# - An `eat` instance method
# - The ability to "get" but NOT "set" `color`
# Type your solution directly below this line:
class Animal
  attr_reader :color
  def eat
    puts "hello #{color}"
  end
def initialize(color)
 @color = color
end
end

# Question 7
# Create a new `Animal` instance with the color "brown".
# Type your solution directly below this line:
melley = Animal.new("brown")

# Question 8
# Define a Ruby class called `Dog` that inherits from the `Animal` class.
# Each dog should have the same attributes and methods as `Animal`. Each dog
# should also have...
# - A `bark` instance method the returns 'bark bark'
# - A breed attribute that you are able to "get" and "set"
# Type your solution directly below this line:
class Dog < Animal
  attr_accessor :breed
  def bark
    return 'bark bark'
  end
  def initialize(color,breed)
    super(color)
    @breed = breed

  end
end




# Question 9
# Create a new instance of `Dog` with the color "black" and the breed "labrador retriever".
# Type your solution directly below this line:
sonia = Dog.new("black", "labrador retriever")
