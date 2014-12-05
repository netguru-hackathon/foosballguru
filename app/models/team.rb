class Team < ActiveRecord::Base
  belongs_to :user_1, class_name: 'User'
  belongs_to :user_2, class_name: 'User'

  def to_s
    "#{user_1.email}, #{user_2.email}"
  end
end
