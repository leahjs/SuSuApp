class Invitation < ActiveRecord::Base
  belongs_to :pool
  belongs_to :guest, class_name: 'User'
  belongs_to :user
end
