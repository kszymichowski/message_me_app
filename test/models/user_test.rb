require "test_helper"

class UserTest < ActiveSupport::TestCase

  def setup
      @user = User.new(username: "user1", password: "password1")
  end

  test "category should be valid" do
      assert @user.valid?
  end

  test "name should be present" do
      @user.username = ""
      assert_not @user.valid?
  end

  test "name should be unique" do
      @user.save
      @user2 = User.new(username: "user2")
      assert_not @user2.valid?
  end

  test "name should not be too long" do
      @user.username = "a"*22
      assert_not @user.valid?
  end

end
