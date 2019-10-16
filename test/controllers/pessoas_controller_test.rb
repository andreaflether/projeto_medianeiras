require 'test_helper'

class PessoasControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get pessoas_new_url
    assert_response :success
  end

  test "should get create" do
    get pessoas_create_url
    assert_response :success
  end

  test "should get update" do
    get pessoas_update_url
    assert_response :success
  end

  test "should get edit" do
    get pessoas_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get pessoas_destroy_url
    assert_response :success
  end

  test "should get index" do
    get pessoas_index_url
    assert_response :success
  end

  test "should get show" do
    get pessoas_show_url
    assert_response :success
  end

end
