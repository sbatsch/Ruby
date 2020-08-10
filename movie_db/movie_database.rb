movies = {
  Batman: 4,
  Edward_Scissorhands: 3,
  Superman: 3,
  Beetlejuice: 4
}

puts ""
puts "---------------------- | THE MOVIE DATABASE | ---------------------- "
puts ""
puts "What would you like to do?"
puts "-----------------------------------------------------------"
puts "Enter 'add' to add a movie to the database."
puts "Enter 'update' to update a movie to the database."
puts "Enter 'display' to view all movies in the database."
puts "Enter 'delete' to delete a movie from the database."
puts "-----------------------------------------------------------"

choice = gets.chomp

case choice
  when "add"
    puts "What's the title of the movie?"
    title = gets.chomp
    if movies[title.to_sym] = nil 
      puts "What's the rating of the movie? (Enter a number from 0..4)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "the new movie and it's rating have been added to the database."
    else
      puts "Sorry — that movie already exists in the Database."
    end 
  when "update"
    puts "What's the title of the movie?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "Sorry — that movie is not currently in the Database." 
    else
      puts "What is the updated rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The movie's rating has been updated."
    end 
  when "display"
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
  when "delete"
    puts "What's the title of the movie to be deleted?"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "Sorry — that movie is not currently in the Database." 
    else
      movies.delete([title.to_sym])
      puts "The movie has been deleted from the database."
    end 
  else 
    puts "Error - The command you entered does NOT exist!"
end 
