print "What's your first name?"
first_name = gets.strip.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.strip.chomp
last_name.capitalize!

print "What city are you from?"
city = gets.strip.chomp
city.capitalize!

print "What's the abbreviation of the state you're from originally?"
state = gets.strip.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name}, and you're from #{city}, #{state}."