require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(twitterid: "banjo84", name: "Mrs Banjo", oauth_token: "xxx", oauth_secret: "dfsfsfsdfsfsfsfd")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "twitterid should be present" do
    @user.twitterid = "     "
    assert_not @user.valid?
  end

  test "oauth_token should be present" do
    @user.oauth_token = "     "
    assert_not @user.valid?
  end

  test "oauth_secret should be present" do
    @user.oauth_secret = "     "
    assert_not @user.valid?
  end

  test "twitterid should not be too long" do
    @user.twitterid = "a" * 244
    assert_not @user.valid?
  end


  test "oauth_token should be unique" do
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

end
