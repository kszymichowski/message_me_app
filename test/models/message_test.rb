require "test_helper"

class MessageTest < ActiveSupport::TestCase
 
  def setup
    @user = User.create(username: "user1", password: "password1")
    @message = Message.new(body: "user1message", user_id: @user.id)
  end

  test "message should be valid" do
    assert @message.valid?
  end

  test "body should be present" do
      @message.body = ""
      assert_not @message.valid?
  end

end
