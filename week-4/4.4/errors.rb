# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] tomatoes on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.


# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#   errors.rb
#
# 2. What is the line number where the error occurs?
#   172, but the problem is line 18
#
# 3. What is the type of error message?
#   syntax error
#
# 4. What additional information does the interpreter provide about this type of error?
#   unexpected end-of-input, expecting keyword "end"
#
# 5. Where is the error in the code?
#   Line 18
#
# 6. Why did the interpreter give you this error?
#   The code does not have an "end" for its while loop so it never closes, and the file errors at the last line (172).

# --- error -------------------------------------------------------

south_park = 13

# 1. What is the line number where the error occurs?
#   43
#
# 2. What is the type of error message?
#   in '<main'    (Name Error)
#
# 3. What additional information does the interpreter provide about this type of error?
#   undefined local variable or method 'south_park' for main:Object (NameError)
#
# 4. Where is the error in the code?
#    Line 43
#
# 5. Why did the interpreter give you this error?
#   The code just has "south_park" without defining it as a variable or method.
#

# --- error -------------------------------------------------------
def cartman
  1 + 2
end

cartman()

# 1. What is the line number where the error occurs?
#   63
#
# 2. What is the type of error message?
#   in '<main>'      (NoMethodError)
#
# 3. What additional information does the interpreter provide about this type of error?
#   undefined method 'cartman' for main:Object (NoMethodError)
#
# 4. Where is the error in the code?
#   Line 63 or lack of code above it
#
# 5. Why did the interpreter give you this error?
#   The code is trying to call the cartman method before the method has been defined so the method cartman should be defined before line 63.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
#   85
#
# 2. What is the type of error message?
#   in 'cartmans_phrase'      (Argument Error)
#
# 3. What additional information does the interpreter provide about this type of error?
#   wrong number of arguments (1 for 0) (Argument Error) from errors.rb:89:in '<main>'
#
# 4. Where is the error in the code?
#    Line 89
#
# 5. Why did the interpreter give you this error?
#    The method 'carmans_phrase' is not defined with a parameter so it cannot be called with an argument.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Someone must really love South Park...")

# 1. What is the line number where the error occurs?
#    108
#
# 2. What is the type of error message?
#    in 'cartman says'        (Argument Error)
#
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (0 for 1) (ArgumentError) from errors.rb:112:in '<main>'
#
# 4. Where is the error in the code?
#    Line 112
#
# 5. Why did the interpreter give you this error?
#    Opposite problem as the last error. The method 'cartman_says' was defined with one parameter so it must be called with one argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Lisa')

# 1. What is the line number where the error occurs?
#    133
#
# 2. What is the type of error message?
#    in 'cartmans_lie'        (Argument Error)
#
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (1 for 2) (ArgumentError) from errors.rb:137:in '<main'
#
# 4. Where is the error in the code?
#    Line 137
#
# 5. Why did the interpreter give you this error?
#    The method carmans_lie was defined with two parameters but only called with one argument. Either the definition (and output) or the call should be modified.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#    156
#
# 2. What is the type of error message?
#    in '*'       (Type Error)
#
# 3. What additional information does the interpreter provide about this type of error?
#    String can't be coerced into Fixnum (TypeError) from errors.rub:156:in '<main'
#
# 4. Where is the error in the code?
#    Line 156
#
# 5. Why did the interpreter give you this error?
#    You can't multiply an integer by a string. The two should be flipped to multiply the string by the integer.
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 0/20


# 1. What is the line number where the error occurs?
#    176
#
# 2. What is the type of error message?
#    in '/'       (ZeroDivisionError)
#
# 3. What additional information does the interpreter provide about this type of error?
#     divided by 0 (ZeroDivisionError) from errors.rb:176 in '<main>'
#
# 4. Where is the error in the code?
#    Line 176
#
# 5. Why did the interpreter give you this error?
#    Math concept! You can't divide by zero! Change it to '0/20' to result in 0 instead.
#

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    197
#
# 2. What is the type of error message?
#    in 'require_relative'    (LoadError)
#
# 3. What additional information does the interpreter provide about this type of error?
#     cannot load such file -- /Users/Lisa/Phase-0-Work/phase-0/week-4/4.4/cartmans_essay.md (LoadError) from errors.rb:197:in '<main>'
#
# 4. Where is the error in the code?
#    Line 197
#
# 5. Why did the interpreter give you this error?
#    The file it references 'cartmans_essay.md' does not exist on my system.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# If you take them piece by piece I thought they were pretty straightforward. The zero division one might throw you if you didn't know that math rule, and the last one was interesting because I've never seen another file referenced like that.

# How did you figure out what the issue with the error was?
# I jsut read the error message and looked at the line of code it referenced.

# Were you able to determine why each error message happened based on the code?
# Yes. I think this would be a lot harder if we were debugging code that included concepts we hadn't gone over yet, but the methods were easy enough to follow along.

# When you encounter errors in your future code, what process will you follow to help you debug?
# Check the line it references first to see if that points to the problem. If not, like with a missing end, figure out what the problem is and then start going backward through the code looking for it.
