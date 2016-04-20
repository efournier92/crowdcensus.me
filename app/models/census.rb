class Census < ActiveRecord::Base
  belongs_to :user

  validates :description, presence: true
  validates :option_01,   presence: true
  validates :option_02,   presence: true
  validates :duration,    presence: true

end
