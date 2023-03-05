CHOICES = ["rock", "paper", "scissors", "lizard", "Spock"]

WINNER = { "paper": ["rock", "Spock"],
           "rock": ["lizard", "scissors"],
           "lizard": ["Spock", "paper"],
           "Spock": ["scissors", "rock"],
           "scissors": ["lizard", "paper"] }

rules = <<-TEXT
    - Paper covers rock
    - Rock crushes lizard
    - Lizard poisons Spock
    - Spock melts scissors
    - Scissors decapitate lizard
    - Lizard eats paper
    - Paper disproves Spock
    - Spock vaporizes rock
    - Rock breaks scissors
    - Scissors cuts paper

    Each round is worth one point.

    The first to 3 points wins the match.
    TEXT

letter_conversion = { "r": "rock",
                      "p": "paper",
                      "s": "scissors",
                      "l": "lizard",
                      "v": "Spock" }

def prompt(message)
  puts "=> #{message}"
end

def display_rules(rules)
  loop do
    prompt("Enter 'P' to play or 'R' to read the rules.")
    play_or_rules = gets.chomp.downcase
    if play_or_rules == "p"
      break
    elsif play_or_rules == "r"
      puts rules
      break
    else
      prompt("Invalid entry.")
    end
  end
end

def determine_winner(player, computer)
  if WINNER[player.to_sym].include?(computer)
    :player
  elsif WINNER[computer.to_sym].include?(player)
    :computer
  else
    :tie
  end
end

def convert_letter_to_word(player_choice, letter_conversion)
  if letter_conversion[player_choice.to_sym] == nil
    player_choice
  else
    letter_conversion[player_choice.to_sym]
  end
end

def player_input_valid?(player_choice)
  CHOICES.include?(player_choice)
end

def update_score(winner, score)
  score[winner] += 1 unless winner == :tie
end

def display_round_winner(winner)
  if winner == :player
    prompt("You win the round!!!")
  elsif winner == :computer
    prompt("The computer wins the round!!!")
  else
    prompt("Tie!")
  end
end

def display_round_score(score)
  prompt("Your score is #{score[:player]}")
  prompt("The computer's score is #{score[:computer]}")
end

def game_over?(score)
  score[:player] == 3 || score[:computer] == 3
end

def display_game_results(score)
  if score[:player] == 3
    prompt("Congratulations!!! You win!!!")
  elsif score[:computer] == 3
    prompt("Sorry!!! You lose!!!")
  end
end

def play_again?
  prompt("Do you want to play again? (y/n)")
  answer = gets.chomp
  answer.downcase.include?("y")
end

def get_player_choice(letter_conversion)
  player_choice = ""
  loop do
    prompt("Please choose: rock (r), paper (p),
    scissors (s), lizard (l), or Spock (v)")
    player_choice = gets.chomp
    player_choice = convert_letter_to_word(player_choice, letter_conversion)
    if player_input_valid?(player_choice)
      return player_choice
    else
      prompt("Invalid choice.")
    end
  end
end

def display_choices(player_choice, computer_choice)
  prompt("You chose: #{player_choice}")
  prompt("The computer: chose: #{computer_choice}")
end

loop do
  score = { player: 0, computer: 0 }

  loop do
    display_rules(rules)

    player_choice = get_player_choice(letter_conversion)

    computer_choice = CHOICES.sample

    display_choices(player_choice, computer_choice)

    winner = determine_winner(player_choice, computer_choice)

    update_score(winner, score)

    display_round_winner(winner)

    display_round_score(score)

    break if game_over?(score)
  end

  display_game_results(score)

  break unless play_again?()
end

prompt("Thank you for playing rock paper, scissor, lizard, Spock.")
