class Developer < ApplicationRecord
    has_many :dev_lans
    has_many :languages, through: :dev_lans
    has_many :dev_pros
    has_many :programming_languages, through: :dev_pros
end
