class Championship < ActiveRecord::Base
  has_many :matches

  validates :name, length: { in: 2..20 }
end
