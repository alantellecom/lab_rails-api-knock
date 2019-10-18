require 'test_helper'

class BookletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booklet = booklets(:one)
  end

  test "should get index" do
    get booklets_url, as: :json
    assert_response :success
  end

  test "should create booklet" do
    assert_difference('Booklet.count') do
      post booklets_url, params: { booklet: { book_id: @booklet.book_id, user_id: @booklet.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show booklet" do
    get booklet_url(@booklet), as: :json
    assert_response :success
  end

  test "should update booklet" do
    patch booklet_url(@booklet), params: { booklet: { book_id: @booklet.book_id, user_id: @booklet.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy booklet" do
    assert_difference('Booklet.count', -1) do
      delete booklet_url(@booklet), as: :json
    end

    assert_response 204
  end
end
