class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    self.take_turn


  end

  def take_turn
     until @game_over == true 
    self.show_sequence
    self.require_sequence
     end
    if @game_over == true 
      self.game_over_message
      self.reset_game
    end

  end

  def show_sequence
    self.add_random_color
    self.seq.each do |color|
      puts color 
    end

  end

  def require_sequence
    puts "Copy the sequence"
    blank = []
    # until blank.length == @seq.length
    # string = gets.chomp
    # blank << string 
    @seq.each_with_index do |color, i| 
      string = gets.chomp 
      blank << string 
      if @seq[i] != blank[i]
        @game_over = true 
      end 
    end

  end

  def add_random_color
    @seq << COLORS.sample 

  end

  def round_success_message
      puts "You won the round!!!" 

  end

  def game_over_message
      puts "Game over!You are not the best."

  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []

  end
end
