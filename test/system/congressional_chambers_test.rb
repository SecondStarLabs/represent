require "application_system_test_case"

class CongressionalChambersTest < ApplicationSystemTestCase
  setup do
    @congressional_chamber = congressional_chambers(:one)
  end

  test "visiting the index" do
    visit congressional_chambers_url
    assert_selector "h1", text: "Congressional Chambers"
  end

  test "creating a Congressional chamber" do
    visit congressional_chambers_url
    click_on "New Congressional Chamber"

    fill_in "Name", with: @congressional_chamber.name
    click_on "Create Congressional chamber"

    assert_text "Congressional chamber was successfully created"
    click_on "Back"
  end

  test "updating a Congressional chamber" do
    visit congressional_chambers_url
    click_on "Edit", match: :first

    fill_in "Name", with: @congressional_chamber.name
    click_on "Update Congressional chamber"

    assert_text "Congressional chamber was successfully updated"
    click_on "Back"
  end

  test "destroying a Congressional chamber" do
    visit congressional_chambers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Congressional chamber was successfully destroyed"
  end
end
