require 'test_helper'

class IdeasControllerTest < ActionDispatch::IntegrationTest
  test "should get parents" do
    get ideas_parents_url
    assert_response :success
  end

end
