=begin
#Release 1: PSEUDOCODE:
-Input: list of names
-Output: Random groups of 5, 4, or 3 people
-Steps:
IF list has 5 people or less, create 1 group
  END
Shuffle list of names
Create groups of 5 w/o leaving < 3 people at end
Create groups of 4 w/o leaving < 3 people at end
Create groups of 3 people

=end

#Release 2: Initial Solution
def account_group(list)
  return list if list.length <= 5
  shuffled = list.shuffle
  sorted_list = []
  while shuffled.length % 5 >= 3 || shuffled.length % 5 == 0
    sorted_list << shuffled.slice!(0..4)
    break if shuffled.length < 5
  end
  while shuffled.length % 4 >= 3 || shuffled.length % 4 == 0
    sorted_list << shuffled.slice!(0..3)
    break if shuffled.length < 4
  end
  while shuffled.length > 0
    sorted_list << shuffled.slice!(0..2)
  end
  sorted_list.reject { |a| a.empty? }

  sorted_list.each_with_index { |a, i|
    puts "Group #{i + 1}: " + a.join(", ")
    puts
    }
end


#Release 3: Add complexity
# 1. If you run this program three times in a row, will the program give you three different outputs?
#--YES, it was actually kind of annoying while trying to compare the test outputs

# 2. Should the program store past outputs?
#--Nah, once you have the groups its job is done.

#3 If one person were to leave the cohort, how would the accountability groups change?
#--Depends when they left and how many people were in the group. If someone left early on and the group only had 2 remaining members, I'd try to add them to another 3 person group or split them into two 4 person groups if necessary.

#4 How do you decide when you're done? You'll need to decide. This is much more challenging than you probably think, especially since there are no pre-written tests.
#--Well mathematically there are only so many possibilities. At some point your just adding multiples of previous solutions, so at least from that angle there is a pretty clear stopping point. My method produced satisfactory results for list sizes 1-12 and also for the cohort list, so I was happy where I left it.

#Release 5: Write Driver Code
# p account_group(["one","two","three"])
# p account_group(["one","two","three", "four"])
# p account_group(["one","two","three", "four", "five"])
# p account_group(["one","two","three", "four", "five", "six"])
# p account_group(["one","two","three", "four", "five", "six", "seven"])
# p account_group(["one","two","three", "four", "five", "six", "seven", "eight"])
# p account_group(["one","two","three", "four", "five", "six", "seven", "eight","nine"])
# p account_group(["one","two","three", "four", "five", "six", "seven", "eight","nine","ten"])
# p account_group(["one","two","three","four","five","six","seven","eight","nine","ten","eleven"])
# p account_group(["one","two","three", "four", "five", "six", "seven", "eight","nine","ten","eleven","twelve"])

p account_group(["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson","Alex Wen", "Alicia Briceland", "Allison paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", "Ben Flores", "Buck Melton", "Caitlin Hoffman", "Carlos Gonzalez", "Chand Nirankari", "Ché Sanders", "Chris Henderson", "Christopher Lamkin", "Christyn Budzyna", "Dan Park", "David Ramirez", "David Tao", "David Walden", "Bill Deng", "Denny Jovic", "Dexter Moran", "Diana Ozemebhoya Eromosele", "Dominick Lombardo", "Elan Kvitko", "Elizabeth Alexander", "Elizabeth Brown", "Ena Bek", "Esther Leytush", "Evan Druce", "Frank Lam", "Gabriel Zurita", "Jack Thatcher", "Jason Milfred", "John Colella", "Jonathan Kaplan", "Kelson Adams", "Kristal Lam", "Kunal Patel", "Leland Meiners", "Liam Binell", "Lisa Buch", "Lisa Dannewitz", "Lyudmila Arinich", "Mohamed Monekata", "Parker Smathers", "Patrick DeWitte", "Renan Martins", "Riley Scheid", "Robin Soubry", "Samantha Holmes", "Scott Southard", "Shaun R Sweet", "Shin Wang", "Sibel Ergener", "Simon Thomas", "Talal Talhouk", "Ted Bogin", "Traci Fong", "Victoria Solorzano"])

=begin

#Release 6: Reflect
1. What was the most interesting and most difficult part of this challenge?
--

2. Do you feel you are improving in your ability to write pseudocode and break the problem down?
--Slowly, very very slowly. I paired on this challenge, and my pair already had a partial solution (completely different from above) when I joined him. That made it hard for me to pseudocode because we just jumped into making his idea work.

Was your approach for automating this task a good solution? What could have made it even better?
What data structure did you decide to store the accountability groups in and why?
What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?


=end