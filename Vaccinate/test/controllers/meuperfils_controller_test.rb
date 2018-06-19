require 'test_helper'

class MeuperfilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meuperfil = meuperfils(:one)
  end

  test "should get index" do
    get meuperfils_url
    assert_response :success
  end

  test "should get new" do
    get new_meuperfil_url
    assert_response :success
  end

  test "should create meuperfil" do
    assert_difference('Meuperfil.count') do
      post meuperfils_url, params: { meuperfil: { idade: @meuperfil.idade, nome: @meuperfil.nome, vacina_tomada: @meuperfil.vacina_tomada } }
    end

    assert_redirected_to meuperfil_url(Meuperfil.last)
  end

  test "should show meuperfil" do
    get meuperfil_url(@meuperfil)
    assert_response :success
  end

  test "should get edit" do
    get edit_meuperfil_url(@meuperfil)
    assert_response :success
  end

  test "should update meuperfil" do
    patch meuperfil_url(@meuperfil), params: { meuperfil: { idade: @meuperfil.idade, nome: @meuperfil.nome, vacina_tomada: @meuperfil.vacina_tomada } }
    assert_redirected_to meuperfil_url(@meuperfil)
  end

  test "should destroy meuperfil" do
    assert_difference('Meuperfil.count', -1) do
      delete meuperfil_url(@meuperfil)
    end

    assert_redirected_to meuperfils_url
  end
end
