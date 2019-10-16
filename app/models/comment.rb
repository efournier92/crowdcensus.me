class Comment < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :census, dependent: :destroy

  validates :comment, presence: :true
end
