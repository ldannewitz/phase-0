# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
# def shortest_string(list_of_words)
#   return list_of_words[0] if list_of_words.length <= 1

#   shortest = list_of_words.pop
#   dup = []

#   list_of_words.each do |test_item|
#     if test_item.length < shortest.length
#       dup.push shortest
#       shortest = test_item
#     else
#       dup.push test_item
#     end
#   end
#   return shortest
# end

#Refactored
def shortest_string(list_of_words)
  list_of_words.inject {|short, word| short.length < word.length ? short : word}
end