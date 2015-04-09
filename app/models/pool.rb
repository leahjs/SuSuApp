class Pool < ActiveRecord::Base
  belongs_to :lifeguard, class_name: 'User'
  has_many :swimmers
  has_many :invitations
  validates :name, presence: true
  validates :pool_amount, presence: true
  accepts_nested_attributes_for :invitations, reject_if: proc { |attributes| attributes['guest'].blank? }





  def liferaft_amount

  end
end
