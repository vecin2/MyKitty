require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get homePage" do
    get :homePage
    assert_response :success
  end

end
