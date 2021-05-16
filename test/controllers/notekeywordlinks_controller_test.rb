require "test_helper"

class NotekeywordlinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @notekeywordlink = notekeywordlinks(:one)
  end

  test "should get index" do
    get notekeywordlinks_url
    assert_response :success
  end

  test "should get new" do
    get new_notekeywordlink_url
    assert_response :success
  end

  test "should create notekeywordlink" do
    assert_difference('Notekeywordlink.count') do
      post notekeywordlinks_url, params: { notekeywordlink: {  } }
    end

    assert_redirected_to notekeywordlink_url(Notekeywordlink.last)
  end

  test "should show notekeywordlink" do
    get notekeywordlink_url(@notekeywordlink)
    assert_response :success
  end

  test "should get edit" do
    get edit_notekeywordlink_url(@notekeywordlink)
    assert_response :success
  end

  test "should update notekeywordlink" do
    patch notekeywordlink_url(@notekeywordlink), params: { notekeywordlink: {  } }
    assert_redirected_to notekeywordlink_url(@notekeywordlink)
  end

  test "should destroy notekeywordlink" do
    assert_difference('Notekeywordlink.count', -1) do
      delete notekeywordlink_url(@notekeywordlink)
    end

    assert_redirected_to notekeywordlinks_url
  end
end
