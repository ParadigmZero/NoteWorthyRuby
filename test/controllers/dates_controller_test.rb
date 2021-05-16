require "test_helper"

class DatesControllerTest < ActionDispatch::IntegrationTest
  test "should get dates" do
    get dates_dates_url
    assert_response :success
  end
end
