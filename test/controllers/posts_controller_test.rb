require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get posts_login_url
    assert_response :success
  end

end
