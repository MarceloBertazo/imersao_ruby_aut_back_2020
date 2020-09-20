Dado('que faco uma requisicao GET para o endpoint de obter autores') do
    @response = @services.authors.get_authors
    #puts @response
  end
  
  Entao('o status da resposta e {int}') do |status|
    expect(@response.code).to eq status
  end
  
  Dado('que faco uma requisicao GET para o endpoint de obter autores por livro') do
    @book = @services.books.get_books.sample
    @response = @services.authors.get_author_by_book @book["ID"]
    puts @response
    puts @book
  end
  
  Dado('que faco uma requisicao POST para o endpoint de cadastrar autor') do
    @author = Author.new
    @author.id = Faker::Number.number(digits:4)
    @book = @services.books.get_books.sample
    @author.idbook = @book["ID"]
    @author.firstname = "First Name #{@author.id}"
    @author.lastname = "Last Name #{@author.id}"

    @response = @services.authors.post_authors @author
    puts 'Autor: ' + @author.id.to_s + ' / ID Book: ' + @author.idbook.to_s + ' / First Name: ' + @author.firstname.to_s + ' / Last Name: ' + @author.lastname.to_s
    puts @response
  end