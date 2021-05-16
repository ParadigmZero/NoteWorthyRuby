require "application_system_test_case"

class NotekeyworklinksTest < ApplicationSystemTestCase
  setup do
    @notekeyworklink = notekeyworklinks(:one)
  end

  test "visiting the index" do
    visit notekeyworklinks_url
    assert_selector "h1", text: "Notekeyworklinks"
  end

  test "creating a Notekeyworklink" do
    visit notekeyworklinks_url
    click_on "New Notekeyworklink"

    click_on "Create Notekeyworklink"

    assert_text "Notekeyworklink was successfully created"
    click_on "Back"
  end

  test "updating a Notekeyworklink" do
    visit notekeyworklinks_url
    click_on "Edit", match: :first

    click_on "Update Notekeyworklink"

    assert_text "Notekeyworklink was successfully updated"
    click_on "Back"
  end

  test "destroying a Notekeyworklink" do
    visit notekeyworklinks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Notekeyworklink was successfully destroyed"
  end
end
