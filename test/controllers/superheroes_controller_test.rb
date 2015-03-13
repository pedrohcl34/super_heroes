require 'test_helper'

class SuperheroesControllerTest < ActionController::TestCase
  setup do
    @superhero = superheroes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:superheroes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create superhero" do
    assert_difference('Superhero.count') do
      post :create, superhero: { hero_name: @superhero.hero_name, real_name: @superhero.real_name }
    end

    assert_redirected_to superhero_path(assigns(:superhero))
  end

  test "should show superhero" do
    get :show, id: @superhero
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @superhero
    assert_response :success
  end

  test "should update superhero" do
    patch :update, id: @superhero, superhero: { hero_name: @superhero.hero_name, real_name: @superhero.real_name }
    assert_redirected_to superhero_path(assigns(:superhero))
  end

  test "should destroy superhero" do
    assert_difference('Superhero.count', -1) do
      delete :destroy, id: @superhero
    end

    assert_redirected_to superheroes_path
  end
end
