require 'test_helper'

class ConditionalFormsControllerTest < ActionController::TestCase
  test "should get choose" do
    get :choose
    assert_response :success
  end

end
