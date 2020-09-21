#language: pt

@contrato
Funcionalidade: Testes de contrato da api de autores

Cenário: VerificarContratoDoListarAutores
Dado que faco uma requisicao GET para o endpoint de obter autores
Entao o status da resposta e 200
E recebo uma lista de autores

Cenário: VerificarContratoDoListarAutoresPorLivro
Dado que faco uma requisicao GET para o endpoint de obter autores
Entao o status da resposta e 200
E recebo uma lista de autores

Cenário: VerificarContratoDoCadastrarAutor
Dado que faco uma requisicao POST para o endpoint de cadastrar autor
Entao o status da resposta e 200
E recebo um autor