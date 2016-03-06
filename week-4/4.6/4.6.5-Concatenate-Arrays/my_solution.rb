# Concatenate Two Arrays

# I worked on this challenge [by myself, with: ].


# Your Solution Below
# 1, 2, 3, 4, 5
# 6, 7, 8
# --> 1, 2, 3, 4, 5, 6, 7, 8


def array_concat(array_1, array_2)
  array_3 = []
  array_1.each { |item| array_3 << item }
  array_2.each { |item| array_3 << item }
  return array_3
end