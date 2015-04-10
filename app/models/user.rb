class User < ActiveRecord::Base
  has_many :swimmers
  has_many :pools, through: :swimmers
  has_many :invitations, foreign_key: 'guest_id'


  def self.create_with_omniauth(auth)
    binding.pry
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.first_name = auth["info"]["first_name"]
      user.last_name = auth["info"]["last_name"]
      user.profile_photo = auth["info"]["picture"]["small"]
      user.email = auth["info"]["email"]
    end
  end

end
