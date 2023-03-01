VALID_CHOICES = %w(rock paper scissors lizard spock r p s l v)

computer_score = 0
player_score = 0

rules = <<-TEXT
    - Paper covers rock
    - Rock crushes lizard
    - Lizard poisons Spock
    - Spock smashes (or melts) scissors
    - Scissors decapitate lizard
    - Lizard eats paper
    - Paper disproves Spock
    - Spock vaporizes rock
    - Rock breaks scissors
    TEXT

def prompt(message)
  puts "=> #{message}"
end

def word_to_letter_conversion(word)
  if word == "rock"
    word = "r"
  elsif word == "paper"
    word = "p"
  elsif word == "scissors"
    word = "s"
  elsif word == "lizard"
    word = "l"
  elsif word == "spock"
    word = "v"
  else
    return word
  end
end

def letter_to_word_conversion(letter)
  if letter == "r"
    letter = "rock"
  elsif letter == "p"
    letter = "paper"
  elsif letter == "s"
    letter = "scissors"
  elsif letter == "l"
    letter = "lizard"
  elsif letter == "v"
    letter = "Spock"
  elsif letter == "spock"
    letter = "Spock"
  else
    return letter
  end
end

def score?(first, second)
  (first == "p" && (second == "r" || second == "sp"))  ||
  (first == "r" && (second == "l" || second == "s")) ||
  (first == "l" && (second == "sp" || second == "p") ||
  (first == "sp" && (second == "s" || second == "r")) ||
  (first == "s" && second == "l"))

  # first == "l" && second == "p" ||
  # first == "p" && second == "sp" ||
  # first == "sp" && second == "r" ||
  # first == "r" && second == "s"
end

def add_point(player, computer)
  if score?(player, computer)
    player_score = player_score + 1
  elsif score?(computer, player)
    computer_score = computer_score + 1
  end
end

prompt("WELCOME TO ROCK PAPER SCISSORS LIZARD SPOCK")

loop do
  prompt("Enter P to get straight to playing or R to read the rules first.")
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

prompt("The computer chooses: #{letter_to_word_conversion(computer_choice)}")

player_choice = word_to_letter_conversion(player_choice)

add_point(player_choice, computer_choice)

p player_score

p computer_score

