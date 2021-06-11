require "application_system_test_case"

class DogFilesTest < ApplicationSystemTestCase
  setup do
    @dog_file = dog_files(:one)
  end

  test "visiting the index" do
    visit dog_files_url
    assert_selector "h1", text: "Dog Files"
  end

  test "creating a Dog file" do
    visit dog_files_url
    click_on "New Dog File"

    fill_in "Age", with: @dog_file.age
    fill_in "Breed", with: @dog_file.breed
    fill_in "Name", with: @dog_file.name
    fill_in "Sex", with: @dog_file.sex
    fill_in "User", with: @dog_file.user_id
    fill_in "Weight", with: @dog_file.weight
    click_on "Create Dog file"

    assert_text "Dog file was successfully created"
    click_on "Back"
  end

  test "updating a Dog file" do
    visit dog_files_url
    click_on "Edit", match: :first

    fill_in "Age", with: @dog_file.age
    fill_in "Breed", with: @dog_file.breed
    fill_in "Name", with: @dog_file.name
    fill_in "Sex", with: @dog_file.sex
    fill_in "User", with: @dog_file.user_id
    fill_in "Weight", with: @dog_file.weight
    click_on "Update Dog file"

    assert_text "Dog file was successfully updated"
    click_on "Back"
  end

  test "destroying a Dog file" do
    visit dog_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dog file was successfully destroyed"
  end
end
