Dado('que estou na pagina inicial do site de compras') do
  @login = PaginaLogin.new
end
Quando('acessar a area de login') do
  @login.pagina_inicial
end
Quando('informar {string} e {string}') do | cpf , senha|
  @login.inserir_dados_login(cpf,senha)
  @login.acessar_area_logada
  sleep 2
end
Então('serei direcionado para area logada e verei o {string} do usuario logado') do |nome|
  @nome_usuario_logado = AreaLogada.new.usuario_logado
  expect(@nome_usuario_logado).to eql nome
end