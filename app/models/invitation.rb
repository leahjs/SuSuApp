class Invitation < ActiveRecord::Base
  belongs_to :pool
  belongs_to :guest, class_name: 'User'
  validates :pool_id, presence:true
  validates :guest_id, presence:true
end
