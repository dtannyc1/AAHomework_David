class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    pos_arr = (0..5).to_a + (7..12).to_a
    pos_arr.each do |ii|
        4.times{ @cups[ii] << :stone }
    end
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    pos_arr = (0..5).to_a + (7..12).to_a
    raise "Invalid starting cup" if !pos_arr.include?(start_pos)
    raise "Starting cup is empty" if @cups[start_pos].empty?
    true
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []
    cur_idx = start_pos
    until stones.empty?
        cur_idx += 1
        if current_player_name == @name1 && cur_idx == 13
            cur_idx += 1
        elsif current_player_name == @name2 && cur_idx == 6
            cur_idx += 1
        end
        cur_idx = cur_idx % 14
        @cups[cur_idx] << stones.shift
    end
    render
    next_turn(cur_idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    return :prompt if ending_cup_idx == 6 || ending_cup_idx == 13
    return :switch if @cups[ending_cup_idx].length == 1
    ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? {|arr| arr.empty?}
    return true if @cups[7..12].all? {|arr| arr.empty?}
    false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    return @name1 if @cups[6].length > @cups[13].length
    return @name2 if @cups[6].length < @cups[13].length
  end
end
