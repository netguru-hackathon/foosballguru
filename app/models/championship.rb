class Championship < ActiveRecord::Base
  has_many :matches
  CHAMP_SIZES = [8,16,32]


  def max_level
    Math.log2(participants_count.to_i) - 1
  end
end
