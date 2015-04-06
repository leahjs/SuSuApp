class Pool < ActiveRecord::Base
  has_one :lifeguard, class_name: :user
end
