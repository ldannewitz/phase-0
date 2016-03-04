# Longest String

# I worked on this challenge [by myself].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
  if list_of_words.length <= 1
    return list_of_words[0]
  end

  longest = list_of_words.pop
  trash = []

  list_of_words.each do |test_item|
    if test_item.length < longest.length
      trash.push test_item
    else
      trash.push longest
      longest = test_item
    end
  end
  return longest
end