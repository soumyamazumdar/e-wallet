require 'test_helper'

class TestControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get test_index" do
    get test_controller_test_index_url
    assert_response :success
  end

end
