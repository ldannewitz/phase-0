# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select {|item| item.is_a?(thing_to_find.class) && item.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.select{|k,v| v == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
# .select = returns a new hash consisting of entries for which the block returns true. In the first method we pass in an array and a letter. The #select block checks each item of the array and returns any that 1) are a string and 2) include the letter. In the second method #select returns any hash pairs whose value equals the thing_to_find.
# .is_a = Returns true if class is the class of object
# .class = Returns the class
# .include? = Returns true if string contains the given string or character.
# .keys = Returns a new array populated with the keys from a hash. Because #select returns both the key and value of matching items, we had to also use #keys to pull out just the keys in a new array.

# BE CAREFUL with finding methods on hashes. There are a bunch of different methods that do this, but most of them stop at the first key that matches instead of finding all matches, ex. only returned "Ditto" and not "Hoobie".

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |x|
    if x.is_a? Integer
      x += thing_to_modify
    else
      x
    end
  end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |x,y|
    source[x] = y + thing_to_modify
  end
end

# Identify and describe the Ruby method(s) you implemented.
# map! runs a given block of code for each of the elements in place.
#.each calls the given block of code once for each element.
#.is_a? asks if something is something (like an integer) usually follows if.


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|x| x.to_s}
end

def my_hash_sorting_method(source)
   source.sort_by {|x,y| y}
end

# Identify and describe the Ruby method(s) you implemented.
# I used sort_by and .to_s
# In the array, we want to sort i_want_pets, so we assign it to a variable then implement sort_by
# We have to tell it how to sort tho.  .sort would work except we have both strings and integers, so we use sort_by instead to be able to tell it to turn every element into a string.

#Similarly in the hash, we sort hashes using arrays. Keep in mind a hash is a key and a value.
#So when we describe how to sort, we include two variables and tell it which one to sort with.
#In this case, x = key and y = value.  We know the value (age) is how we want to sort, so we put variable y on the outside


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|element| element.is_a?(thing_to_delete.class) && element.include?(thing_to_delete)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  source
end

# Identify and describe the Ruby method(s) you implemented.
# .delete_if: This is an array method that deletes an element
#    of the array, if the element in question matches
#    the logical statement in the block that is passed
#    to the .delete_if method.
# .is_a?: This method returns a boolean and evaluates if an element
#    is a member of the class that is passed as an argument
#    to the .is_a? method. E.g. .is_a?(Object) should always
#    return true since everything is an object in Ruby.
# .class: This method returns the class that the element in question
#    belongs to. When used in conjunction with .is_a? you can
#    determine if an element is the same class as some other element.
# .include?: Returns a boolean. True if any part of the element contains
#    the whole argument passed to the .inclue? method.
# .delete: This is a hash method that deletes the key and the value
#    from the hash, when passed the key as an argument.


# Person 5
def my_array_splitting_method(source)
  new_array = [source.select {|x| x.is_a?(Integer)}, source.select {|x| x.is_a?(String)}]
end


def my_hash_splitting_method(source, age)
  solution = [source.select {|k,v| v <= age}.to_a, source.select {|k,v| v > age}.to_a]
end

# Identify and describe the Ruby method(s) you implemented.
# .select = returns a new hash consisting of entries for which the block returns true.
# .is_a? = Returns true if class is the class of object
# .to_a = Converts hash to a nested array of [key, value] arrays.


# Release 1: Identify and describe the Ruby method you implemented. Teach your accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#