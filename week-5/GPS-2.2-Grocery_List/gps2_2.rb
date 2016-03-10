=begin

Method to create a list
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps:
  1. Create a hash with each key with each list item
      -Use spaces in the string to determine what each list item is
      - Make an array with each list item %w
  2. set default quantity to 1
  3. print the list to the console call *print list method*
output: the list of groceries and their quantity. This is best shown as a hash.

Method to add (one) item to a list
input: item name (a string)
steps:
1. Check if item is on the list.
  -IF it is, *update quantity method*
  -ELSE add it to the list.
output: a message telling the user that their item was added to their list and total quantity

Method to remove (one) item from the list
input: an item (a string)
steps:
1. Check if item is on the list.
  -IF it is, reduce quantity by one
output: a message.
  -IF it was there, tell the user that their item was removed and the new total quantity
  -ELSE output a message telling the user that it was never there.

Method to update the quantity of an item
input:
steps:
output:

Method to print a list and make it look pretty
input:
steps:
output:
=end

def create_list(list)
  groc_hash = Hash.new(1)
  array = list.split(' ')
  p array
  array.each do |item|
    groc_hash[item]
  end
  p groc_hash
end

create_list("carrots apples cereal pizza")