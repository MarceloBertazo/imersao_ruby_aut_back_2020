#language: pt

Funcionalidade: Testes alternativos da api de autores

Cenario: VerificarListaDeAutoresDeUmLivroInexistente
Dado que faco uma requisicao GET para o endpoint de obter autores por livro id '99999'
Entao o status da resposta e 404
E a busca nao retorna resultados

Cenario: VerificarBuscaDeAutorPorIdInexistente
Dado que faco uma requisicao GET para o endpoint de obter autores com id '99999'
Entao o status da resposta e 4040
E a busca nao retorna resultados