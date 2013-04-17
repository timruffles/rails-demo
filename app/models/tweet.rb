class Tweet < ActiveRecord::Base
  attr_accessible :deleted_at, :text, :user_id

  belongs_to(:user)
end
