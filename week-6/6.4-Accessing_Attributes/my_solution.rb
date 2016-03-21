#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
  def my_name
    return "Lisa"
  end
end


class Greetings
  def initialize
    @name = NameData.new
  end

  def hello
    puts "Hello #{@name.my_name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello


=begin
# Reflection
#Release_1
1. What are these methods doing?
--We initialize our class "Profile" with three instance variables: age, name, and occupation. Several of our methods simply print different parts of this information to the screen: #print_info, #what_is_age, #what_is_name, and #what_is_occupation. Our other methods change this information: #change_my_age, #change_my_name, #change_my_occupation.
--When we run the code we start by calling Profile.new to create a new instance of our class. Then we print age, name, and occupation before calling the three change methods and changing these instance variables.

2. How are they modifying or returning the value of instance variables?
--Kind of covered above, and kind of self-explanatory. #change_my_age changes the instance variable @age from 27 to 28. #change_my_name changes the instance variable @name from "Kim" to "Taylor". #change_my_occupation changes the instance variable @occupation from "Cartographer" to "Rare Coins Trader".


#Release_2
1. What changed between the last release and this release?
--The method #what_is_age was replaced by "attr_reader :age".

2. What was replaced?
--The method #what_is_age

3. Is this code simpler than the last?
--Yes!


#Release_3
1. What changed between the last release and this release?
--The method #change_my_age was replaced by "attr_writer :age".

2. What was replaced?
--The method #change_my_age

3. Is this code simpler than the last?
--Yes!


#Release_6
1. What is a reader method?
--A reader method lets you access the information stored in an instance variable by calling that variable's name as a method. So in our example, we replaced the method #what_is_name with #name by adding attr_reader : name.

2. What is a writer method?
--A writer method lets you change the information stored in an instance variable by calling that variable's name as a method. So in our example, we replaced the method #change_my_name with #name by adding attr_writer : name.

3. What do the attr methods do for you?
--Simplify your code when a method's sole purpose would be to read or write an instance variable. They are useful shortcuts.

4. Should you always use an accessor to cover your bases? Why or why not?
--Nope! The materials said having all instance variables changeable when you really just want them read could lead to difficult debugging issues and/or compromise the security of your data. You want to limit access to your variables to just what is necessary.

5. What is confusing to you about these methods?
--Their syntax is just very different from traditional method definitions. Once I worked through this challenge it made a lot of sense though.


=end