class AreaLogada
  include Capybara::DSL
  def usuario_logado
    find('div#menuTopo1 li a b').text
  end   
end  