class TeamDecorator < Draper::Decorator
  delegate_all

  def to_s
    "#{user_1.email}, #{user_2.email}"
  end
end
