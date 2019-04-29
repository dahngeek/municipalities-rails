require 'test_helper'

class MayorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mayor = mayors(:one)
  end

  test "should get index" do
    get mayors_url
    assert_response :success
  end

  test "should get new" do
    get new_mayor_url
    assert_response :success
  end

  test "should create mayor" do
    assert_difference('Mayor.count') do
      post mayors_url, params: { mayor: { last_name: @mayor.last_name, mail: @mayor.mail, nacionality: @mayor.nacionality, name: @mayor.name, phone: @mayor.phone } }
    end

    assert_redirected_to mayor_url(Mayor.last)
  end

  test "should show mayor" do
    get mayor_url(@mayor)
    assert_response :success
  end

  test "should get edit" do
    get edit_mayor_url(@mayor)
    assert_response :success
  end

  test "should update mayor" do
    patch mayor_url(@mayor), params: { mayor: { last_name: @mayor.last_name, mail: @mayor.mail, nacionality: @mayor.nacionality, name: @mayor.name, phone: @mayor.phone } }
    assert_redirected_to mayor_url(@mayor)
  end

  test "should destroy mayor" do
    assert_difference('Mayor.count', -1) do
      delete mayor_url(@mayor)
    end

    assert_redirected_to mayors_url
  end
end
