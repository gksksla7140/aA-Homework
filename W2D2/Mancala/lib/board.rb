require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1=name1
    @player2=name2
    @cups=place_stones

  end

  def place_stones

    set=Array.new(14){[]}
    noidx=[6,13]
    set.each_with_index do |x,i|
      if noidx.include?(i)
      else
        4.times {|i| x << :stone}
      end

    end
    set

    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    if start_pos > 14
      raise "Invalid starting cup"
    elsif @cups[start_pos].empty?
      raise "Starting cup is empty"

    end
    true
  end

  def make_move(start_pos, current_player_name)
     stone=@cups[start_pos].length
    @cups[start_pos]=[]
    newstart_pos=start_pos+1
    (newstart_pos...newstart_pos+stone).each do |x|
      if x!=6 || x!= 13
        @cups[x % 13] << :stone
      elsif x==6 && current_player_name==@player1
        @cups[x % 13]<< :stone
      elsif x==13 && current_player_name==@player2
        @cups[x % 13] << :stone
      end
    end
    render
    next_turn((start_pos+stone)%13)




  end

  def next_turn(ending_cup_idx)
    byebug

    if @cups[ending_cup_idx].empty?
      return :switch
    end
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
