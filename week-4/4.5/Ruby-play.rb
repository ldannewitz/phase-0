=begin
# 99 BOTTLES OF BEER ON THE WALL
# loop, decreases by 1 every time
# puts lyrics with counter #
# stops at 90 instead of 0

counter = 99
while counter >= 97
  puts "#{counter} bottles of beer on the wall"
  puts "#{counter} bottles of beeeeeeeer"
  puts "Take one down"
  puts "Pass it around"
  counter -= 1
  puts "#{counter} bottles of beer on the wall!"
end
=end


=begin
# ANNOYING, DEAF GRANDMA
# you say something
# grandma can't hear you, huh speak up!
# if you yell she thinks she can hear you and says rand #
# quits when you shout BYE

bye_counter = 0
puts "You see your grandmother and say..."
while bye_counter < 3
  talk_to_gma = gets.chomp
  if talk_to_gma == "BYE"
    bye_counter += 1
    puts "hmmmmmm......."
  elsif talk_to_gma != talk_to_gma.upcase
    bye_counter = 0
    puts "HUH?! SPEAK UP, SONNY!"
  else
    bye_counter = 0
    random_year = 1930 + rand(21)
    puts "NO, NOT SINCE #{random_year}!"
  end
end
puts "OK BYE!"
=end


=begin
# LEAP YEARS
# ask for starting year
# ask for ending year
# puts all leap years b/t them and including them
puts "Leap Year Calculator"
puts "Starting year please:"
start_year = gets.chomp.to_i
puts "Ending year please:"
end_year = gets.chomp.to_i
puts ""

#leap years divisible by 4, but not 100 UNLESS by 400
while end_year >= start_year
  if end_year % 4 == 0
      if end_year % 100 == 0
          if end_year % 400 == 0
            puts "#{end_year} is a leap year!"
            end_year -= 4
          elsif
            end_year -= 1
          end
      else
        puts "#{end_year} is a leap year!"
        end_year -= 4
      end
  else
    end_year -=1
  end
end
=end