class Championship < ActiveRecord::Base
  has_many :matches
  validates :name, length: { in: 2..20 }
  CHAMP_SIZES = [8,16,32]
end
