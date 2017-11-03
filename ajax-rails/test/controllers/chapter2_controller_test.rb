require 'test_helper'

class Chapter2ControllerTest < ActionDispatch::IntegrationTest
  test "should get myaction" do
    get chapter2_myaction_url
    assert_response :success
  end

end
