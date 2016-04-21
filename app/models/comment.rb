class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :census

  validates :comment, presence: :true
end
