require 'test_helper'

class TiposContaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_conta = tipos_conta(:one)
  end

  test "should get index" do
    get tipos_conta_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_conta_url
    assert_response :success
  end

  test "should create tipo_conta" do
    assert_difference('TipoConta.count') do
      post tipos_conta_url, params: { tipo_conta: { codigo: @tipo_conta.codigo, descricao: @tipo_conta.descricao, nome: @tipo_conta.nome } }
    end

    assert_redirected_to tipo_conta_url(TipoConta.last)
  end

  test "should show tipo_conta" do
    get tipo_conta_url(@tipo_conta)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_conta_url(@tipo_conta)
    assert_response :success
  end

  test "should update tipo_conta" do
    patch tipo_conta_url(@tipo_conta), params: { tipo_conta: { codigo: @tipo_conta.codigo, descricao: @tipo_conta.descricao, nome: @tipo_conta.nome } }
    assert_redirected_to tipo_conta_url(@tipo_conta)
  end

  test "should destroy tipo_conta" do
    assert_difference('TipoConta.count', -1) do
      delete tipo_conta_url(@tipo_conta)
    end

    assert_redirected_to tipos_conta_url
  end
end
