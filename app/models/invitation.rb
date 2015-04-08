class Invitation < ActiveRecord::Base
  belongs_to :pool
  belongs_to :guest, classname: 'User'
end
