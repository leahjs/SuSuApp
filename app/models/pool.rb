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

  def assign_paydates_to_swimmers
    unless start_date.nil?
      start_date = self.start_date
      lifeguard_goes_last.each do |swimmer|
        swimmer.update(:payday_date => start_date)
        "#{swimmer.first_name} gets paid #{start_date}" 
        start_date += 7
      end
    end
  end
  
  def lifeguard_goes_last
    self.swimmers.rotate
  end

  def liferaft_amount
  end
end
