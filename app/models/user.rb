class User < ActiveRecord::Base
  has_many :swimmers
  has_many :pools, through: :swimmers
  has_many :invitations
end
