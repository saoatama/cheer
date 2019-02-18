require "application_system_test_case"

class ProofreadsTest < ApplicationSystemTestCase
  setup do
    @proofread = proofreads(:one)
  end

  test "visiting the index" do
    visit proofreads_url
    assert_selector "h1", text: "Proofreads"
  end

  test "creating a Proofread" do
    visit proofreads_url
    click_on "New Proofread"

    fill_in "Content", with: @proofread.content
    fill_in "Edited", with: @proofread.edited
    fill_in "Title", with: @proofread.title
    click_on "Create Proofread"

    assert_text "Proofread was successfully created"
    click_on "Back"
  end

  test "updating a Proofread" do
    visit proofreads_url
    click_on "Edit", match: :first

    fill_in "Content", with: @proofread.content
    fill_in "Edited", with: @proofread.edited
    fill_in "Title", with: @proofread.title
    click_on "Update Proofread"

    assert_text "Proofread was successfully updated"
    click_on "Back"
  end

  test "destroying a Proofread" do
    visit proofreads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Proofread was successfully destroyed"
  end
end
