class ChampionshipDrawer

  def initialize(championship_id)
    @matches = Championship.find(championship_id).matches
    @championship = Championship.find(championship_id)
  end

  def call
    (0...levels_count).map { |level_number| @matches.where(level: level_number) }
  end

  private

  def levels_count
    Math.log2(@championship.participants_count.to_i).to_i - 1
  end
end
