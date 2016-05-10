class Census < ActiveRecord::Base
  belongs_to :user

  validates :description, presence: true
  validates :option_01,   presence: true
  validates :option_02,   presence: true
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

  def time_left
    seconds_left = self.end_time - Time.now
    hours_left   = seconds_left / 3600
    hours_left_int = hours_left.to_i
    minutes_left_unform = ((hours_left - hours_left_int) * 60).to_i
    minutes_left = sprintf '%02d', minutes_left_unform
    "#{hours_left_int}:#{minutes_left}"
  end

  def self.check_active
    active = Census.all.where(active: true)
    active.each do |census|
      if census.end_time < DateTime.now
        census.update(active: false)
      end
    end
  end
end
