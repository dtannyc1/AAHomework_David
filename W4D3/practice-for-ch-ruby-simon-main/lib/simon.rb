class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
        take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    if !game_over
        round_success_message
        self.sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    seq.each do |color|
        puts color
        sleep(0.75)
        system("clear")
        sleep(0.25)
    end
  end

  def require_sequence
    input_array = []
    until input_array.length == self.seq.length || game_over
        puts "Enter the next color (red, blue, green, or yellow):"
        input_array << gets.chomp
        if input_array == self.seq[0...input_array.length]
            sleep(0.5)
            system("clear")
        else
            @game_over = true
        end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Success!"
    sleep(1)
    system("clear")
  end

  def game_over_message
    puts "Fail! You made it to Level #{self.sequence_length}"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end

test = Simon.new
test.play
