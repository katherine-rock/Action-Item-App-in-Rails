require "application_system_test_case"

class ActionItemsTest < ApplicationSystemTestCase
  setup do
    @action_item = action_items(:one)
  end

  test "visiting the index" do
    visit action_items_url
    assert_selector "h1", text: "Action Items"
  end

  test "creating a Action item" do
    visit action_items_url
    click_on "New Action Item"

    fill_in "Action", with: @action_item.action
    fill_in "Category", with: @action_item.category
    fill_in "Comment", with: @action_item.comment
    fill_in "Priority", with: @action_item.priority
    click_on "Create Action item"

    assert_text "Action item was successfully created"
    click_on "Back"
  end

  test "updating a Action item" do
    visit action_items_url
    click_on "Edit", match: :first

    fill_in "Action", with: @action_item.action
    fill_in "Category", with: @action_item.category
    fill_in "Comment", with: @action_item.comment
    fill_in "Priority", with: @action_item.priority
    click_on "Update Action item"

    assert_text "Action item was successfully updated"
    click_on "Back"
  end

  test "destroying a Action item" do
    visit action_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Action item was successfully destroyed"
  end
end
