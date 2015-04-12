class Swimmer < ActiveRecord::Base
  belongs_to :pool
  belongs_to :user
  validates :pool_id, presence: true
end
