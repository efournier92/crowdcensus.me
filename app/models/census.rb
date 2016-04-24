class Census < ActiveRecord::Base
  belongs_to :user

  validates :description, presence: true
  validates :option_01,   presence: true
  validates :option_02,   presence: true
  validates :active,      inclusion: { in: [true, false] }
  validates :end_time,    presence: true
  validates :user_id,     presence: true

  DURATIONS = { '72 Hours': 72, '24 Hours': 24, '2 Hours': 2 }

  def active?
    if end_time < Time.now
      false
    else
      true
    end
  end

  def results
    opinions_01 = Opinion.where(census_id: self.id, chosen_option: 1).count
    opinions_02 = Opinion.where(census_id: self.id, chosen_option: 2).count
    opinions_03 = Opinion.where(census_id: self.id, chosen_option: 3).count
    [opinions_01, opinions_02, opinions_03]
  end

end
