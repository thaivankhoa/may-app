class ProgrammingLanguage < ApplicationRecord
    has_many :dev_pros
    has_many :developers, through: :dev_pros
end
