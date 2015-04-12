class Pool < ActiveRecord::Base
  belongs_to :lifeguard, class_name: 'User'
  has_many :swimmers
  belongs_to :reciever, class_name: 'User'
  has_many :users, through: :swimmers
  has_many :invitations
  validates :name, presence: true
  validates :pool_amount, presence: true
  accepts_nested_attributes_for :invitations, reject_if: proc { |attributes| attributes['guest'].blank? }

  # def amt_to_pay
  #  num_of_swimmers = self.member_limit
  #  pool_amt = self.pool_amount.to_f
  #  pool_amt / num_of_swimmers
  # end

  def self.set_recievers
    self.where(status: "In Progress").each do |pool|
      pool.set_reciever
    end
  end

  def set_reciever
    new_reciever = self.swimmers.where(recieved: false).first
    self.reciever_id = new_reciever.id
    new_reciever.update(recieved: true)
  end

  def lifeguard_goes_last
    self.swimmers.rotate
  end

  def liferaft_amount
  end

  def self.update_credibility
    self.where(status: "closed").each do |pool|
      pool.users
      binding.pry
    end
  end
end
