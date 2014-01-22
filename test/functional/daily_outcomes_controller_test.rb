require 'test_helper'

class DailyOutcomesControllerTest < ActionController::TestCase
  setup do
    @daily_outcome = daily_outcomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_outcomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_outcome" do
    assert_difference('DailyOutcome.count') do
      post :create, daily_outcome: {  }
    end

    assert_redirected_to daily_outcome_path(assigns(:daily_outcome))
  end

  test "should show daily_outcome" do
    get :show, id: @daily_outcome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daily_outcome
    assert_response :success
  end

  test "should update daily_outcome" do
    put :update, id: @daily_outcome, daily_outcome: {  }
    assert_redirected_to daily_outcome_path(assigns(:daily_outcome))
  end

  test "should destroy daily_outcome" do
    assert_difference('DailyOutcome.count', -1) do
      delete :destroy, id: @daily_outcome
    end

    assert_redirected_to daily_outcomes_path
  end
end
