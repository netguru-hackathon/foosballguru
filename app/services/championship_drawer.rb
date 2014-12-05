class ChampionshipDrawer

  def initialize(championship_id)
    @matches = Championship.find(championship_id).matches
  end

  def call
    (0...levels_count).map { |level_number| @matches.where(level: level_number) }
  end

  private

  def levels_count
    Math.log2(@matches.where(level: 0).count).to_i
  end
end
