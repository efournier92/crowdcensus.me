class User < ActiveRecord::Base
  attr_reader :name

  devise   :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :censuses, dependent: :destroy

  def name
    "#{first_name} #{last_name}"
  end
end
