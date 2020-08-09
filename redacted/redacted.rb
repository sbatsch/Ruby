puts "Enter some text: "
text = gets.downcase.chomp

puts "Enter words to redact: "
redacted_words = gets.chomp.downcase.split(" ")

redacted_sentence = ""

sentence = text.split(" ")
sentence.each do |word| 
  if redacted_words.include? word
    redacted_sentence += "Redacted "
  else
 		 redacted_sentence += word + " "
  end
end 

puts redacted_sentence.capitalize