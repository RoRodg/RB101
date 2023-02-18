VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  puts "=> #{message}"
end

def display_results(choice, computer_choice)
  if (choice == "rock" && computer_choice == "scissors") ||
     (choice == "scissors" && computer_choice == "paper") ||
     (choice == "paper" && computer_choice == "rock")
    prompt("YOU WIN!!!!!!")
  elsif (computer_choice == "rock" && choice == "scissors") ||
        (computer_choice == "scissors" && choice == "paper") ||
        (computer_choice == "paper" && choice == "rock")
    prompt("YOU LOSE!")
  else
    prompt("TIEEEEEEEEE")
  end
end

loop do # MAIN LOOP
  choice = ""
  loop do
    prompt("Choose #{VALID_CHOICES.join(", ")}.")
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
