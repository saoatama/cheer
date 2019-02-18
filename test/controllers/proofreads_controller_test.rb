require 'test_helper'

class ProofreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proofread = proofreads(:one)
  end

  test "should get index" do
    get proofreads_url
    assert_response :success
  end

  test "should get new" do
    get new_proofread_url
    assert_response :success
  end

  test "should create proofread" do
    assert_difference('Proofread.count') do
      post proofreads_url, params: { proofread: { content: @proofread.content, edited: @proofread.edited, title: @proofread.title } }
    end

    assert_redirected_to proofread_url(Proofread.last)
  end

  test "should show proofread" do
    get proofread_url(@proofread)
    assert_response :success
  end

  test "should get edit" do
    get edit_proofread_url(@proofread)
    assert_response :success
  end

  test "should update proofread" do
    patch proofread_url(@proofread), params: { proofread: { content: @proofread.content, edited: @proofread.edited, title: @proofread.title } }
    assert_redirected_to proofread_url(@proofread)
  end

  test "should destroy proofread" do
    assert_difference('Proofread.count', -1) do
      delete proofread_url(@proofread)
    end

    assert_redirected_to proofreads_url
  end
end
