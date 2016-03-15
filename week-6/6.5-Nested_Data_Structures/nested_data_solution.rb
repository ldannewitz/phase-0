# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [
  [1,2],
  ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================

p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

p hash[:outer][:inner]["almost"][3]

# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.flatten.map! {|item| p item + 5}


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.flatten.map! {|item| p item + "ly"}

=begin
#Release 5: Reflect
1. What are some general rules you can apply to nested arrays?
--Nested arrays are indexed in stacks, for each layer of the array. I'm not sure about general rules. Nested arrays behave the same as non-nested arrays, but with an added layer of complexity.

2. What are some ways you can iterate over nested arrays?
--Originally to work out the logic we used #map and nested if/else statements. It worked, but it wasn't pretty. Then I refactored to #flatten.

3. Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
--#flatten! After finishing the challenge I kept thinking there had to be an easier way to accomplish the goal. I remembered seeing #flatten around, but wasn't 100% sure it would do what I wanted. Luckily it did. It's a good option because it eliminates the need for endless if/else statements when dealing with arrays that are 2d, 3d, etc.

=end