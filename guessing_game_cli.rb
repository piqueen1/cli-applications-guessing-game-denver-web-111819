require "pry"

def prompt
  puts "Please enter a number between 1 and 6"
end

def run_guessing_game
  my_num = rand(6).to_i + 1
  prompt
  user_num = gets.strip.to_i
  
  message = if user_num == my_num
    puts "You guessed the correct number!"
  elsif user_num == "exit"
    puts "Goodbye!"
  else
    puts "Sorry! The computer guessed #{my_num}."
  end
  
  message
end

#run_guessing_game