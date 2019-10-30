require 'test_helper'

class VoluntariosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get voluntarios_index_url
    assert_response :success
  end

  test "should get show" do
    get voluntarios_show_url
    assert_response :success
  end

  test "should get new" do
    get voluntarios_new_url
    assert_response :success
  end

  test "should get create" do
    get voluntarios_create_url
    assert_response :success
  end

  test "should get edit" do
    get voluntarios_edit_url
    assert_response :success
  end

  test "should get update" do
    get voluntarios_update_url
    assert_response :success
  end

  test "should get destroy" do
    get voluntarios_destroy_url
    assert_response :success
  end

end
