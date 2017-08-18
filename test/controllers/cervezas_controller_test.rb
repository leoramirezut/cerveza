require 'test_helper'

class CervezasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cerveza = cervezas(:one)
  end

  test "should get index" do
    get cervezas_url
    assert_response :success
  end

  test "should get new" do
    get new_cerveza_url
    assert_response :success
  end

  test "should create cerveza" do
    assert_difference('Cerveza.count') do
      post cervezas_url, params: { cerveza: { nombre: @cerveza.nombre, volumen: @cerveza.volumen } }
    end

    assert_redirected_to cerveza_url(Cerveza.last)
  end

  test "should show cerveza" do
    get cerveza_url(@cerveza)
    assert_response :success
  end

  test "should get edit" do
    get edit_cerveza_url(@cerveza)
    assert_response :success
  end

  test "should update cerveza" do
    patch cerveza_url(@cerveza), params: { cerveza: { nombre: @cerveza.nombre, volumen: @cerveza.volumen } }
    assert_redirected_to cerveza_url(@cerveza)
  end

  test "should destroy cerveza" do
    assert_difference('Cerveza.count', -1) do
      delete cerveza_url(@cerveza)
    end

    assert_redirected_to cervezas_url
  end
end
