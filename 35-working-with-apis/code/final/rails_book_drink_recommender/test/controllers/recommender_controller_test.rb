require 'test_helper'

class RecommenderControllerTest < ActionDispatch::IntegrationTest
  test "should get choose_list" do
    get recommender_choose_list_url
    assert_response :success
  end

  test "should get choose_book" do
    get recommender_choose_book_url
    assert_response :success
  end

  test "should get recommendation" do
    get recommender_recommendation_url
    assert_response :success
  end

end
