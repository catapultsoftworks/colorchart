require 'test_helper'

class BehaviorRanksControllerTest < ActionController::TestCase
  setup do
    @behavior_rank = behavior_ranks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:behavior_ranks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create behavior_rank" do
    assert_difference('BehaviorRank.count') do
      post :create, behavior_rank: { colorCode: @behavior_rank.colorCode, colorName: @behavior_rank.colorName, name: @behavior_rank.name, rank: @behavior_rank.rank }
    end

    assert_redirected_to behavior_rank_path(assigns(:behavior_rank))
  end

  test "should show behavior_rank" do
    get :show, id: @behavior_rank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @behavior_rank
    assert_response :success
  end

  test "should update behavior_rank" do
    put :update, id: @behavior_rank, behavior_rank: { colorCode: @behavior_rank.colorCode, colorName: @behavior_rank.colorName, name: @behavior_rank.name, rank: @behavior_rank.rank }
    assert_redirected_to behavior_rank_path(assigns(:behavior_rank))
  end

  test "should destroy behavior_rank" do
    assert_difference('BehaviorRank.count', -1) do
      delete :destroy, id: @behavior_rank
    end

    assert_redirected_to behavior_ranks_path
  end
end
