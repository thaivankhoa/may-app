class DevPro < ApplicationRecord
  belongs_to :developer
  belongs_to :programming_language
end
