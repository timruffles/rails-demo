class User < ActiveRecord::Base
  attr_accessible :bio, :email, :handle, :location, :password_hash, :referrer_id

  has_many(:tweets) # tweets.singularize().constantize()

  has_many(:followee_relations, :class_name => "FollowRelation", :foreign_key => "followee_id")
  has_many(:follower_relations, :class_name => "FollowRelation", :foreign_key => "follower_id")
  has_many(:followers,:through => :follower_relations, :source => :follower)
  has_many(:followees,:through => :followee_relations, :source => :followee)


  def follow(user)
  	follower_relations.create(:followee_id => user.id)
  end

  def follows?(user)
  	follower_relations.where(followee_id: user.id).exists?
  end

end
