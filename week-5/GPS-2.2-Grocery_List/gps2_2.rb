=begin

1. Method to create a list
INPUT: string of items separated by spaces (example: "carrots apples cereal pizza")
STEPS:
  1. Create a hash with each list item as a key
      -Use spaces in the string to determine what each list item is
  2. set default quantity to 1
  3. print the list to the console call *print list method*
OUTPUT: the list of groceries and their quantity. This is best shown as a hash.

2. Method to add (one) item to a list
INPUT: item name (a string)
STEPS:
1. Check if item is on the list.
  -IF it is, *update quantity method*
  -ELSE add it to the list.
OUTPUT: a message telling the user that their item was added to their list and total quantity

3. Method to remove (one) item from the list
INPUT: an item (a string)
STEPS:
1. Check if item is on the list.
  -IF it is, reduce quantity by one
OUTPUT: a message.
  -IF it was there, tell the user that their item was removed and the new total quantity
  -ELSE output a message telling the user that it was never there.

4. Method to update the quantity of an item
input:
steps:
output:

Method to print a list and make it look pretty
input:
steps:
output:
=end

groc_hash = Hash.new
run = true

def create_list(list)
  array = list.split(' ')
  array.each do |item|
    groc_hash[item] = 1
  end
  groc_hash
end

def add(item, list)
  list[item] = 1
  list
end

p "Hi, let's make a grocery list!"
puts "What items are on your list?"
list = gets.chomp
groc_hash = create_list(list)
puts "Your list is: #{groc_hash}", ""

while run
  puts "What would you like to do?"
  puts "-- Type 'create' to create a new list."
  puts "-- Type 'add' to add an item to the existing list."
  puts "-- Type 'remove' to remove an item from the existing list."
  puts "-- Type 'update' to update the quantity of an item existing list."
  puts "-- Type 'print' to print the list."
  puts "-- Type 'exit' to get out."

  choice = gets.chomp.downcase
  case choice
  when 'create'
    puts "Ok, new list. What's on it?"
    list = gets.chomp
    groc_hash = create_list(list)
    puts "Your list is: #{groc_hash}"
  when 'add'
    puts "Ok, add an item to the list. What item?"
    item = gets.chomp
    if groc_hash[item].nil?
      groc_hash = add(item, groc_hash)
      puts "Added #{item} to list", ""
    else
      puts "That item is alreayd on the list. Would you like to update its quantity?"
      if gets.chomp == 'yes'
        #RUN UPDATE METHOD
      else
        puts "Ok, item was not updated."
      end
    end
  when 'remove'
    puts ?
  when 'update'
    puts "What item do you want to update?"
    item = gets.chomp
    if groc_hash[item].nil?
      puts "That item is not on the list. Would you like to add it?"
        if gets.chomp == 'yes'
          groc_hash = add(item, groc_hash)
          puts "Added #{item} to list", ""
        else
          puts "Ok, item was not added."
        end
    else
      puts "New quantity for #{item}?"
      quantity = gets.chomp
      groc_hash = update(item, quantity, groc_hash)
      puts "#{item} updated to #{quantity}, ""
    end
  when 'print'
    puts ?
  when 'exit'
    break
  end
end

# create_list("carrots apples cereal pizza")


# when 'update'
#   puts "What movie do you want to update?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "Movie not found!"
#   else
#     puts "What's the new rating? (Type a number 0 to 4.)"
#     rating = gets.chomp
#     movies[title.to_sym] = rating.to_i
#     puts "#{title} has been updated with new rating of #{rating}."
#   end
# when 'display'
#   movies.each do |movie, rating|
#     puts "#{movie}: #{rating}"
#   end
# when 'delete'
#   puts "What movie do you want to delete?"
#   title = gets.chomp
#   if movies[title.to_sym].nil?
#     puts "Movie not found!"
#   else
#     movies.delete(title.to_sym)
#     puts "#{title} has been removed."
#   end
# else
#   puts "Sorry, I didn't understand you."
# end