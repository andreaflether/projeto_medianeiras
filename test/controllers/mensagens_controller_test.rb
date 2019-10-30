require 'test_helper'

class MensagensControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mensagens_show_url
    assert_response :success
  end

  test "should get index" do
    get mensagens_index_url
    assert_response :success
  end

  test "should get create" do
    get mensagens_create_url
    assert_response :success
  end

  test "should get new" do
    get mensagens_new_url
    assert_response :success
  end

  test "should get destroy" do
    get mensagens_destroy_url
    assert_response :success
  end

  test "should get update" do
    get mensagens_update_url
    assert_response :success
  end

  test "should get edit" do
    get mensagens_edit_url
    assert_response :success
  end

end
