require "test_helper"

class NtagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ntag = ntags(:one)
  end

  test "should get index" do
    get ntags_url
    assert_response :success
  end

  test "should get new" do
    get new_ntag_url
    assert_response :success
  end

  test "should create ntag" do
    assert_difference('Ntag.count') do
      post ntags_url, params: { ntag: { tag: @ntag.tag } }
    end

    assert_redirected_to ntag_url(Ntag.last)
  end

  test "should show ntag" do
    get ntag_url(@ntag)
    assert_response :success
  end

  test "should get edit" do
    get edit_ntag_url(@ntag)
    assert_response :success
  end

  test "should update ntag" do
    patch ntag_url(@ntag), params: { ntag: { tag: @ntag.tag } }
    assert_redirected_to ntag_url(@ntag)
  end

  test "should destroy ntag" do
    assert_difference('Ntag.count', -1) do
      delete ntag_url(@ntag)
    end

    assert_redirected_to ntags_url
  end
end
