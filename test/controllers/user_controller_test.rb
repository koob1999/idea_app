require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get parents" do
    get user_parents_url
    assert_response :success
  end

end
