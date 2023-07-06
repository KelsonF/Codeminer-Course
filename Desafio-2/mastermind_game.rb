# frozen_string_literal: true

# Main class of the project
class MastermindGame
  attr_accessor :attempts, :color_sequence

  def initialize
    @color_sequence = generate_color_sequence
    @attempts = 10
  end

  def generate_color_sequence
    colors = %w[red blue yellow green orange]
    colors.sample(4)
  end

  def play_game
    puts 'Welcome back, my friend, to the show that never ends'
    puts 'Try to guess the correct password'
    puts "...and win your prize\n\n"
    puts "What's your answer? (yes = 1 or no = 2)"
    user_answer = gets.to_i

    return if user_answer != 1

    while @attempts.positive?
      puts "You have #{@attempts} attempts left"
      puts "Type the correct password (Ex: Red, Green, Blue, Orange)\n"
      user_passwords = user_guess_password

      @attempts -= 1

      if user_password_validator?(user_passwords)
        puts 'Congratulations! You guessed the correct password.'
        return
      else
        correct_colors, correct_positions = evaluate_password(user_passwords)
        puts "Correct colors: #{correct_colors}"
        puts "Correct colors and positions: #{correct_positions}"
      end
    end

    puts "Game over. You ran out of attempts. The correct password was: #{@color_sequence.join(', ')}"
  end

  def user_guess_password
    user_try = 4
    password_array = []

    while user_try.positive?
      puts 'Type the password: '
      password = gets.chomp.downcase
      puts "\n"

      password_array.push(password)
      user_try -= 1
    end

    password_array
  end

  def user_password_validator?(user_password)
    user_password == @color_sequence
  end

  def evaluate_password(user_password)
    correct_colors = 0
    correct_positions = 0

    user_password.each_with_index do |color, index|
      if color == @color_sequence[index]
        correct_positions += 1
      elsif @color_sequence.include?(color)
        correct_colors += 1
      end
    end

    [correct_colors, correct_positions]
  end
end

# Inicia o jogo
game = Mastermind_game.new
game.play_game
