class User < ActiveRecord::Base
  attr_accessible :bio, :email, :handle, :location, :password_hash, :referrer_id

  has_many(:tweets)
end
