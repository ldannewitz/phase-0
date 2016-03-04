=begin
# WORD SORTER
puts "Give me words to sort:"
array = []
while true
  word = gets.chomp
  break if word.empty?
  array << word
end

puts array.sort
=end

=begin
# TABLE OF CONTENTS REVISITED
toc = ["Table of Contents", "Chapter 1: Getting Started", "page 1", "Chapter 2: Numbers", "page 9", "Chapter 3: Letters", "page 13"]

puts toc[0].center(40)
print toc[1].ljust(20)
puts toc[2].rjust(13)
print toc[3].ljust(20)
puts toc[4].rjust(19)
print toc[5].ljust(20)
puts toc[6].rjust(20)
=end