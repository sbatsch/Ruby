user_input = ""

loop do 
  print "Thtring please!! "
  user_input = gets.strip.chomp
  user_input.downcase!

  if user_input.empty? || user_input.nil?
    puts "I thaid! Thring please! ..."
  else 
    break
  end
end  

if user_input.include? "s"
  user_input.gsub!(/s/, "th")  
else 
  puts "There was no 's' in your string!"
end 

puts "If Daffy Duck was to pronounce your sentence, he would say: #{user_input}"
