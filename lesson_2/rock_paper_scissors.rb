VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "scissors" && second == "paper") ||
    (first == "paper" && second == "rock")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("YOU WIN!!!!!!")
  elsif win?(computer, player)
    prompt("YOU LOSE!")
  else
    prompt("TIEEEEEEEEE")
  end
end

loop do # MAIN LOOP
  choice = ""
  loop do
    prompt("Choose #{VALID_CHOICES.join(', ')}.")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Invalid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}.")
  prompt("The computer chose: #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Do you want to play again? (y/n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end # MAIN LOOP END
