require 'test_helper'

class FollowRelationTest < ActiveSupport::TestCase
  test "can follow user" do
    user_a = users(:one)
    user_b = users(:two)
    user_a.follow(user_b)
    assert(user_a.follows?(user_b),"can follow")
  end
end
