class Player
  # when new player instantiates, it will have three lives
  attr_accessor :life
  attr_reader :total_life
  def initialize
    @life = 3
    @total_life = 3
  end
end


