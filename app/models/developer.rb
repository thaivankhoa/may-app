class Developer < ApplicationRecord
  has_many :dev_lans
  has_many :languages, through: :dev_lans
  has_many :dev_pros
  has_many :programming_languages, through: :dev_pros

  validates :email, presence: true
  validates :email, uniqueness: true

  def self.search_by_pro(pro)
    keys = pro.split(" ")
    length = keys.length
    if pro.length > 0
      # where([(['`programming_languages`.`name` = ?'] * length).join(' OR ')] + keys.map { |name| "#{name}" })
      where('`programming_languages`.`name` IN (?)', keys)
    else
      Developer.all
    end
  end

  def self.search_by_lan(lan)
    keys = lan.split(" ")
    length = keys.length
    if lan.length > 0
      where('`languages`.`code` IN (?)', keys)
    else
      Developer.all
    end
  end
end
