require 'test_helper'

class ClassgroupsControllerTest < ActionController::TestCase
  setup do
    @classgroup = classgroups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classgroups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classgroup" do
    assert_difference('Classgroup.count') do
      post :create, classgroup: { grade: @classgroup.grade, year: @classgroup.year }
    end

    assert_redirected_to classgroup_path(assigns(:classgroup))
  end

  test "should show classgroup" do
    get :show, id: @classgroup
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classgroup
    assert_response :success
  end

  test "should update classgroup" do
    put :update, id: @classgroup, classgroup: { grade: @classgroup.grade, year: @classgroup.year }
    assert_redirected_to classgroup_path(assigns(:classgroup))
  end

  test "should destroy classgroup" do
    assert_difference('Classgroup.count', -1) do
      delete :destroy, id: @classgroup
    end

    assert_redirected_to classgroups_path
  end
end
