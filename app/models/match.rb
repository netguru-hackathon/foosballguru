class Match < ActiveRecord::Base
  belongs_to :team_1, class_name: 'Team'
  belongs_to :team_2, class_name: 'Team'
  belongs_to :championship


  validates :team_1, presence: true
  validates :team_2, presence: true

  validates :team_1_score, numericality: { less_than: 3 }
  validates :team_2_score, numericality: { less_than: 3 }

  validate :scores

  def scores
    errors.add(:team_1_score, "cannot be 2 while second team score is 2") if (team_1_score == 2) and (team_2_score == 2)
    errors.add(:team_1_score, "cannot be less than 2 while second team score is less than 2") if (team_1_score < 2) and (team_2_score < 2)
  end
end
