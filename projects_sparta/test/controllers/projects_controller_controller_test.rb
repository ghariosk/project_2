require 'test_helper'

class ProjectsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get projects_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get projects_controller_show_url
    assert_response :success
  end

  test "should get new" do
    get projects_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get projects_controller_create_url
    assert_response :success
  end

  test "should get edit" do
    get projects_controller_edit_url
    assert_response :success
  end

  test "should get update" do
    get projects_controller_update_url
    assert_response :success
  end

  test "should get destroy" do
    get projects_controller_destroy_url
    assert_response :success
  end

end
