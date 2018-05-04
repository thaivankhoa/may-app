class Developer < ApplicationRecord
  has_many :dev_lans
  has_many :languages, through: :dev_lans
  has_many :dev_pros
  has_many :programming_languages, through: :dev_pros

  validates :email, presence: true
  validates :email, uniqueness: true

  def self.search_by_pro(pro)
    if(pro != nil)
      if pro.length > 0
        keys = pro.split(" ")
        length = keys.length
        # where([(['`programming_languages`.`name` = ?'] * length).join(' OR ')] + keys.map { |name| "#{name}" })
        where('`programming_languages`.`name` IN (?)', keys)
      else
        Developer.all
      end
    else
      Developer.all
    end
  end

  def self.search_by_lan(lan)
    if(lan != nil)
      if lan.length > 0
        keys = lan.split(" ")
        length = keys.length
        where('`languages`.`code` IN (?)', keys)
      else
        Developer.all
      end
    else
      Developer.all
    end
  end
end
