class Language < ApplicationRecord
  has_many :dev_lans
  has_many :developers, through: :dev_lans

  validates :code, presence: true
end
