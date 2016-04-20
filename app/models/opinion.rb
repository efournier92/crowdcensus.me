class Opinion < ActiveRecord::Base
  belongs_to :user
  belongs_to :census

  validates :chosen_option, presence: :true
end
