class ChampionshipCreator
  attr_reader :player_ids

  def initialize(player_ids)
    @player_ids = player_ids
  end

  def create!
    championship = Championship.create!
    teams = create_teams
    create_matches(teams, championship)
    championship
  end

  private

  def create_teams
    player_ids.shuffle.in_groups_of(2).map do |user_1, user_2|
      Team.create!(user_1_id: user_1, user_2_id: user_2)
    end
  end

  def create_matches(teams, championship)
    i = 0
    teams.in_groups_of(2).map do |team_1, team_2|
      Match.create!(team_1: team_1, team_2: team_2, level: 0, championship: championship, position: i)
      i += 1
    end
  end
end
