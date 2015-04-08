class Pool < ActiveRecord::Base
  has_one :lifeguard, class_name: :user
  has_many :swimmers
  has_many :invitations
  validates :name, presence: true
  validates :pool_amount, presence: true
  # accepts_nested_attributes_for :invitations


  def liferaft_amount

  end
end
