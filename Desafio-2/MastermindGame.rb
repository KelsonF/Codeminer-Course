class MastermindGame
    attr_accessor :atttemps, :color_sequence

    def initialize
        @color_sequence = generate_color_sequence
        @attempts = 10
    end

    def generate_color_sequence
        colors = ["red", "blue","yellow", "green", "orange"]
        color_sequence = colors.sample(4)
    end

    def play_game
        puts "Welcome back my friend to the show that never ends"
        puts "Try guess the correct password"
        puts "... and win your prize"   
        puts "\n"
        puts "What`s your answer(yes = 1 or no = 2)?" 
        user_answer = gets.to_i

        if user_answer != 1
            return 
        end

        user_password = user_guess_password

        # while @attempts > 0
        #     puts "You have #{@attempts} attempts left"
        #     puts "Type the correct password (Ex: Red, Green, Blue, Orange)\n"
        #     user_password = user_guess_password

        #     @attempts -= 1
        # end

        puts user_password
    end

    def user_guess_password
        user_try = 4
        password_array = []

        while user_try > 0
            puts "Type the password: "
            password = gets
            puts "\n"

            password_array.push(password)
            user_try -= 1
        end

        return password_array
    end

end

game = MastermindGame.new()
game.play_game