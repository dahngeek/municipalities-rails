require "application_system_test_case"

class MayorsTest < ApplicationSystemTestCase
  setup do
    @mayor = mayors(:one)
  end

  test "visiting the index" do
    visit mayors_url
    assert_selector "h1", text: "Mayors"
  end

  test "creating a Mayor" do
    visit mayors_url
    click_on "New Mayor"

    fill_in "Last name", with: @mayor.last_name
    fill_in "Mail", with: @mayor.mail
    fill_in "Nacionality", with: @mayor.nacionality
    fill_in "Name", with: @mayor.name
    fill_in "Phone", with: @mayor.phone
    click_on "Create Mayor"

    assert_text "Mayor was successfully created"
    click_on "Back"
  end

  test "updating a Mayor" do
    visit mayors_url
    click_on "Edit", match: :first

    fill_in "Last name", with: @mayor.last_name
    fill_in "Mail", with: @mayor.mail
    fill_in "Nacionality", with: @mayor.nacionality
    fill_in "Name", with: @mayor.name
    fill_in "Phone", with: @mayor.phone
    click_on "Update Mayor"

    assert_text "Mayor was successfully updated"
    click_on "Back"
  end

  test "destroying a Mayor" do
    visit mayors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mayor was successfully destroyed"
  end
end
