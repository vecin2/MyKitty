require 'test_helper'

class CreateKittyControllerTest < ActionController::TestCase
  test "should get KittyCreation" do
    get :KittyCreation
    assert_response :success
  end

end
