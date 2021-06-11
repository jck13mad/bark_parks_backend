require "test_helper"

class DogFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dog_file = dog_files(:one)
  end

  test "should get index" do
    get dog_files_url
    assert_response :success
  end

  test "should get new" do
    get new_dog_file_url
    assert_response :success
  end

  test "should create dog_file" do
    assert_difference('DogFile.count') do
      post dog_files_url, params: { dog_file: { age: @dog_file.age, breed: @dog_file.breed, name: @dog_file.name, sex: @dog_file.sex, user_id: @dog_file.user_id, weight: @dog_file.weight } }
    end

    assert_redirected_to dog_file_url(DogFile.last)
  end

  test "should show dog_file" do
    get dog_file_url(@dog_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_dog_file_url(@dog_file)
    assert_response :success
  end

  test "should update dog_file" do
    patch dog_file_url(@dog_file), params: { dog_file: { age: @dog_file.age, breed: @dog_file.breed, name: @dog_file.name, sex: @dog_file.sex, user_id: @dog_file.user_id, weight: @dog_file.weight } }
    assert_redirected_to dog_file_url(@dog_file)
  end

  test "should destroy dog_file" do
    assert_difference('DogFile.count', -1) do
      delete dog_file_url(@dog_file)
    end

    assert_redirected_to dog_files_url
  end
end
