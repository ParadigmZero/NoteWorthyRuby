require "application_system_test_case"

class NotekeywordlinksTest < ApplicationSystemTestCase
  setup do
    @notekeywordlink = notekeywordlinks(:one)
  end

  test "visiting the index" do
    visit notekeywordlinks_url
    assert_selector "h1", text: "Notekeywordlinks"
  end

  test "creating a Notekeywordlink" do
    visit notekeywordlinks_url
    click_on "New Notekeywordlink"

    click_on "Create Notekeywordlink"

    assert_text "Notekeywordlink was successfully created"
    click_on "Back"
  end

  test "updating a Notekeywordlink" do
    visit notekeywordlinks_url
    click_on "Edit", match: :first

    click_on "Update Notekeywordlink"

    assert_text "Notekeywordlink was successfully updated"
    click_on "Back"
  end

  test "destroying a Notekeywordlink" do
    visit notekeywordlinks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notekeywordlink was successfully destroyed"
  end
end
