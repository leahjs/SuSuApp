class User < ActiveRecord::Base
  has_many :swimmers
  has_many :pools, through: :swimmers
  has_many :invitations, foreign_key: 'guest_id'


  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.first_name = auth['info']['name'].split[0]
      user.last_name = auth['info']['name'].split[1]
    end
  end

end
