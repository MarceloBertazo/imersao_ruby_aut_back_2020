Dado('que faco uma requisicao GET para o endpoint de obter autores') do
    @response = @services.authors.get_authors
    puts @response
  end
  
  Entao('o status da resposta e {int}') do |status|
    expect(@response.code).to eq status
    
  end
  
  Dado('que faco uma requisicao GET para o endpoint de obter autores por livro') do
    
  end
  
  Dado('que faco uma requisicao POST para o endpoint de cadastrar autor') do
    
  end