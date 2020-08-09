user_input = ""

loop do 
  print "Thtring please!! "
  user_input = gets.strip.chomp
  user_input.downcase!

  if user_input.empty? || user_input.nil?
    puts "I thaid! Thring please..."
  else 
    break
  end
end  

sentence_has_s = user_input.include? "s"
sentence_has_ci =  user_input.include? "ci"
sentence_has_ce = user_input.include? "ce"
sentence_has_cy = user_input.include? "cy"

if sentence_has_s || sentence_has_ci || sentence_has_ce || sentence_has_cy
  user_input.gsub!(/s/, "th") 
  user_input.gsub!(/ci/, "th") 
  user_input.gsub!(/ce/, "th") 
  user_input.gsub!(/cy/, "th") 
else 
  puts "There was nothing to duckify in your sentence!"
end 

puts "If Daffy Duck was to pronounce your sentence, he would say: #{user_input}"
