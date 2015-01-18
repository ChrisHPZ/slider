require 'test_helper'

class SliderimagesControllerTest < ActionController::TestCase
  setup do
    @sliderimage = sliderimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sliderimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sliderimage" do
    assert_difference('Sliderimage.count') do
      post :create, sliderimage: { caption: @sliderimage.caption, picture: @sliderimage.picture, title: @sliderimage.title, url: @sliderimage.url }
    end

    assert_redirected_to sliderimage_path(assigns(:sliderimage))
  end

  test "should show sliderimage" do
    get :show, id: @sliderimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sliderimage
    assert_response :success
  end

  test "should update sliderimage" do
    patch :update, id: @sliderimage, sliderimage: { caption: @sliderimage.caption, picture: @sliderimage.picture, title: @sliderimage.title, url: @sliderimage.url }
    assert_redirected_to sliderimage_path(assigns(:sliderimage))
  end

  test "should destroy sliderimage" do
    assert_difference('Sliderimage.count', -1) do
      delete :destroy, id: @sliderimage
    end

    assert_redirected_to sliderimages_path
  end
end
