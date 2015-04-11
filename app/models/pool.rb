class Pool < ActiveRecord::Base
  belongs_to :lifeguard, class_name: 'User'
  has_many :swimmers
  has_many :invitations
  validates :name, presence: true
  validates :pool_amount, presence: true
  accepts_nested_attributes_for :invitations, reject_if: proc { |attributes| attributes['guest'].blank? }

  def amt_to_pay
   num_of_swimmers = self.member_limit
   pool_amt = self.pool_amount.to_f
   to_pay = pool_amt / num_of_swimmers
  end

  def self.set_recievers
    self.where(status: "In Progress").each do |pool|

    end
  end

  def set_reciever
    self.swimmers.where(recieved: false)
  end

  def lifeguard_goes_last
    self.swimmers.rotate
  end

  def liferaft_amount
  end


end
