class AddTeam2ScoreToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :team_2_score, :integer
  end
end
