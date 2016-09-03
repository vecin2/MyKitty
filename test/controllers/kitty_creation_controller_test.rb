require 'test_helper'

class KittyCreationControllerTest < ActionController::TestCase
  test "should get KittyEdition" do
    get :KittyEdition
    assert_response :success
  end

end
