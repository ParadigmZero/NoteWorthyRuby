require "test_helper"

class NotekeyworklinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notekeyworklink = notekeyworklinks(:one)
  end

  test "should get index" do
    get notekeyworklinks_url
    assert_response :success
  end

  test "should get new" do
    get new_notekeyworklink_url
    assert_response :success
  end

  test "should create notekeyworklink" do
    assert_difference('Notekeyworklink.count') do
      post notekeyworklinks_url, params: { notekeyworklink: {  } }
    end

    assert_redirected_to notekeyworklink_url(Notekeyworklink.last)
  end

  test "should show notekeyworklink" do
    get notekeyworklink_url(@notekeyworklink)
    assert_response :success
  end

  test "should get edit" do
    get edit_notekeyworklink_url(@notekeyworklink)
    assert_response :success
  end

  test "should update notekeyworklink" do
    patch notekeyworklink_url(@notekeyworklink), params: { notekeyworklink: {  } }
    assert_redirected_to notekeyworklink_url(@notekeyworklink)
  end

  test "should destroy notekeyworklink" do
    assert_difference('Notekeyworklink.count', -1) do
      delete notekeyworklink_url(@notekeyworklink)
    end

    assert_redirected_to notekeyworklinks_url
  end
end
