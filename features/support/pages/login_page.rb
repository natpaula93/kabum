class PaginaLogin
  include Capybara::DSL

  def pagina_inicial
    visit "/"
    click_link('LOGIN | CADASTRE-SE')
  end
  def inserir_dados_login(cpf,senha)
    find('#textfield12').set(cpf)
    find('#textfield15').set(senha)
  end
  def acessar_area_logada
    find("input[src='https://static.kabum.com.br/conteudo/temas/001/imagens/login/botao_logar.png']").click
  end 
end          