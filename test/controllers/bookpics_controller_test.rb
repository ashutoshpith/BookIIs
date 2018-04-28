require 'test_helper'

class BookpicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookpic = bookpics(:one)
  end

  test "should get index" do
    get bookpics_url
    assert_response :success
  end

  test "should get new" do
    get new_bookpic_url
    assert_response :success
  end

  test "should create bookpic" do
    assert_difference('Bookpic.count') do
      post bookpics_url, params: { bookpic: { id: @bookpic.id, image: @bookpic.image, name: @bookpic.name } }
    end

    assert_redirected_to bookpic_url(Bookpic.last)
  end

  test "should show bookpic" do
    get bookpic_url(@bookpic)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookpic_url(@bookpic)
    assert_response :success
  end

  test "should update bookpic" do
    patch bookpic_url(@bookpic), params: { bookpic: { id: @bookpic.id, image: @bookpic.image, name: @bookpic.name } }
    assert_redirected_to bookpic_url(@bookpic)
  end

  test "should destroy bookpic" do
    assert_difference('Bookpic.count', -1) do
      delete bookpic_url(@bookpic)
    end

    assert_redirected_to bookpics_url
  end
end
