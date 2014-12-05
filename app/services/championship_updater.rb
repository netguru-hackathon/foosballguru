class ChampionshipUpdater

  def initialize(championship_id, match_id)
    @championship = Championship.find(championship_id)
    @match = Match.find(match_id)
  end

  def update
    if (@championship.max_level - 1) == @match.level
      return :final
    else
      next_position = (@match.position / 2).floor
      next_match = Match.find_or_create_by(championship_id: @championship.id, level: @match.level + 1, position: next_position)
      if next_match.team_1.try(:exists?)
        next_match.team_2 = @match.winner
      else
        next_match.team_1 = @match.winner
      end
      next_match.save
    end
  end

end
