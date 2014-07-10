module Game
  @players = 6
  @pool = (0...@players).to_a
  
  def self.alive_players
    @alive_players
  end
  
  def self.pool
    @pool
  end
  
  class Player
    def initialize
      @id = Game.pool.sample if Game.pool.size > 0
      Game.pool.delete(id)
    end

    def id
      @id
    end

    def vote
      vote = Game.alive_players.sample
    end
  end
  
  def self.new_players
    @alive_players = []
    @players.times{ @alive_players << Player.new }
    @pool = (0...@players).to_a
  end
  
  def self.round
    voted_for = []
    votes = Hash.new(0)
    killed = []
    suicides = []
    @alive_players.each do |x|     
      target = x.vote
      "#{x.id} voted for #{target.id}"
      suicides << x if target == x
      voted_for << target
    end
    p "#{@alive_players.size} players has voted"
    voted_for.each {|v| votes[v] += 1}
    max_votes = votes.values.max
    killed = votes.map{ |k,v| k if v==max_votes}.compact
    @alive_players -= killed   
    p "#{killed.size} dead"
    p @alive_players.size.zero? ? "all dead" : "#{@alive_players.size} to go"
    if suicides.size > 0
      suicides.each{|i| p "player number #{i.id} commited suicide" if killed.include?(i)}
    end
    if @alive_players.size > 1
      round
    elsif @alive_players.size == 0
      p "and then there were none"
    else
      p "winner is number #{@alive_players.first.id}"
    end
    
  end

end  

# a = []
# b = Hash.new(0)
# 10.times{Game.new_players; a << Game.round}
# a.each{|v| b[v] += 1}
# p a
# p b

Game.new_players
Game.round
