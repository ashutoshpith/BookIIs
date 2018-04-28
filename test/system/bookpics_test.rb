require "application_system_test_case"

class BookpicsTest < ApplicationSystemTestCase
  setup do
    @bookpic = bookpics(:one)
  end

  test "visiting the index" do
    visit bookpics_url
    assert_selector "h1", text: "Bookpics"
  end

  test "creating a Bookpic" do
    visit bookpics_url
    click_on "New Bookpic"

    fill_in "Id", with: @bookpic.id
    fill_in "Image", with: @bookpic.image
    fill_in "Name", with: @bookpic.name
    click_on "Create Bookpic"

    assert_text "Bookpic was successfully created"
    click_on "Back"
  end

  test "updating a Bookpic" do
    visit bookpics_url
    click_on "Edit", match: :first

    fill_in "Id", with: @bookpic.id
    fill_in "Image", with: @bookpic.image
    fill_in "Name", with: @bookpic.name
    click_on "Update Bookpic"

    assert_text "Bookpic was successfully updated"
    click_on "Back"
  end

  test "destroying a Bookpic" do
    visit bookpics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bookpic was successfully destroyed"
  end
end
