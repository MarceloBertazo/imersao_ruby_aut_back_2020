#language: pt

@acceptance
Funcionalidade: Testes de aceitação da api de autores

#Não se aplica para o ambiente da FakerApi pois o cadastro não é realizado de verdade
#Cenário: VerificarLitaDeAutores
#Dado que cadastro um autores
#E faco uma requisicao GET para o endpoint de obter autores
#Entao o status de resposta e 200
#E recebo uma lista de autores 
#E o autor cadastrado consta na lista


Cenário: VerificarListaDeAutoresPorLivro
Dado que faco uma requisicao GET para o endpoint de obter autores por livro
Entao o status da resposta e 200
E recebo uma lista de autores
E os autores sao os do livro consultado

@inprogress
Cenário: VerificarcadastroDeAutor
Dado que faco uma requisicao POST para o endpoint de cadastrar autor
Entao o status da resposta e 200
E recebo um autor
E os dados do autor cadastrado estao conforme informado