class ProgrammingLanguage < ApplicationRecord
  has_many :dev_pros
  has_many :developers, through: :dev_pros

  validates :name, presence: true
  validates :name, uniqueness: true
end
