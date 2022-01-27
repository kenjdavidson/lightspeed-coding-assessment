class Reservation
  attr_reader :id, :starts_at, :player

  def initialize(id, player, starts_at)
    @id = id 
    @player = player
    @starts_at = parse_starts_at(starts_at)
  end

  private 

  def parse_starts_at(starts_at)
    if starts_at.is_a?(String)
      Time.parse(starts_at)
    else 
      starts_at
    end
  end
end