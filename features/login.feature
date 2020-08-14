#language: pt


Funcionalidade: login


Esquema do Cenário: login com dados validos


Dado que estou na pagina inicial do site de compras
Quando acessar a area de login
E informar <cpf> e <senha>
Então serei direcionado para area logada e verei o <nome> do usuario logado

Exemplos:

| cpf                  | senha    | nome   |
|"05493298970"         |"123456"  |"NATALI"|