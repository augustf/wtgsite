require 'test_helper'

class BlogCategoriesControllerTest < ActionController::TestCase
  setup do
    @blog_category = blog_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_category" do
    assert_difference('BlogCategory.count') do
      post :create, :blog_category => @blog_category.attributes
    end

    assert_redirected_to blog_category_path(assigns(:blog_category))
  end

  test "should show blog_category" do
    get :show, :id => @blog_category.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @blog_category.to_param
    assert_response :success
  end

  test "should update blog_category" do
    put :update, :id => @blog_category.to_param, :blog_category => @blog_category.attributes
    assert_redirected_to blog_category_path(assigns(:blog_category))
  end

  test "should destroy blog_category" do
    assert_difference('BlogCategory.count', -1) do
      delete :destroy, :id => @blog_category.to_param
    end

    assert_redirected_to blog_categories_path
  end
end
