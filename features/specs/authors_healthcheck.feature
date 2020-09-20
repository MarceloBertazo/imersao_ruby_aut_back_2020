#language: pt
@healthcheck
Funcionalidade: Testes de healthcheck da api de autores


Cenário: Healthcheck_endpoint_listar_autores
Dado que faco uma requisicao GET para o endpoint de obter autores
Entao o status da resposta e 200

Cenário: Healthcheck_endpoint_listar_autores_por_livro
Dado que faco uma requisicao GET para o endpoint de obter autores por livro
Entao o status da resposta e 200

@inprogress
Cenário: Healthcheck_endpoint_cadastrar_autor
Dado que faco uma requisicao POST para o endpoint de cadastrar autor
Entao o status da resposta e 200

