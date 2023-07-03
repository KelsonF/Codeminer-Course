class MastermindGame
    attr_accessor :atttemps, :color_sequence

    def initialize
        private_methods @color_sequence = generate_color_sequence
        private_methods @attempts = 10
    end

    def generate_color_sequence
        colors = ["red", "blue","yellow", "green", "orange"]
        color_sequence = colors.sample(colors.length)
        puts color_sequence
    end

    def play_game
        puts "Welcome back my friend to the show that never ends"
        puts "Try guess the correct password"
        puts "... and win your prize"   
    end
end

game = MastermindGame.new()
