class Championship < ActiveRecord::Base
  has_many :matches
  CHAMP_SIZES = [8,16,32]
end
