require "test_helper"

class TakenoteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get takenote_index_url
    assert_response :success
  end
end
