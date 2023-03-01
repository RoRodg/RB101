VALID_CHOICES = %w(rock paper scissors lizard spock r p s l v)

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

def prompt(message)
  puts "=> #{message}"
end

def word_to_letter_conversion(word)
  case word
  when "rock"
    "r"
  when "paper"
    "p"
  when "scissors"
    "s"
  when "lizard"
    "l"
  when "spock"
    "v"
  else
    word
  end
end

def letter_to_word_conversion(letter)
  case letter
  when "r"
    "rock"
  when "p"
    "paper"
  when "s"
    "scissors"
  when "l"
    "lizard"
  when "v" || "spock"
    "Spock"
  else
    letter
  end
end

def win?(first, second)
  (first == "p" && (second == "r" || second == "v")) ||
    (first == "r" && (second == "l" || second == "s")) ||
    (first == "l" && (second == "v" || second == "p")) ||
    (first == "v" && (second == "s" || second == "r")) ||
    (first == "s" && (second == "l" || second == "p"))
end

def add_point(player, computer)
  if win?(player, computer)
    "player point"
  elsif win?(computer, player)
    "computer point"
  end
end

prompt("WELCOME TO ROCK PAPER SCISSORS LIZARD SPOCK")

loop do
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

  player_score = 0
  computer_score = 0

  loop do # MAIN LOOP
    player_choice = ""
    loop do
      prompt("Choose: Rock (r), Paper (p), Scissors (s), Lizard (l), Spock (v)")
      player_choice = gets.chomp.downcase
      if VALID_CHOICES.include?(player_choice)
        break
      else
        prompt("That is not a valid choice.")
      end
    end

    computer_choice = %w(r p s l v).sample

    prompt("You choose: #{letter_to_word_conversion(player_choice)}")

    prompt("The computer chooses:
            #{letter_to_word_conversion(computer_choice)}")

    player_choice = word_to_letter_conversion(player_choice)

    point = add_point(player_choice, computer_choice)

    if point == "player point"
      player_score += 1
      prompt("You scored a point!")
    elsif point == "computer point"
      computer_score += 1
      prompt("The computer scored a point!")
    else
      prompt("Tie!!!")
    end

    prompt("Current Score: You #{player_score}, Computer #{computer_score}")

    if player_score == 3
      prompt("YOU WIN!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
      break
    elsif computer_score == 3
      prompt("YOU LOSE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
      break
    end
  end # MAIN LOOP

  prompt("Do you want to play again? (y/n)")
  answer = gets.chomp
  break unless answer.downcase.include?("y")
end

prompt("THANK YOU FOR PLAYING ROCK PAPER SCISSORS. GOODBYE!!!")
