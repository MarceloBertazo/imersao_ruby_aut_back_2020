Entao('os autores sao os do livro consultado') do
    @response.each { |author| expect(author['IDBook']).to eq(@book['ID']) }

    puts @response
  end

  Entao('os dados do autor cadastrado estao conforme informado') do
    expect(@response['ID']).to eq(@author.id)
    expect(@response['IDBook']).to eq(@author.idbook)
    expect(@response['FirstName']).to eq(@author.firstname)
    expect(@response['LastName']).to eq(@author.lastname)
    puts @response
    puts @author.id.to_s + ', ' + @author.idbook.to_s + ', ' + @author.firstname + ', ' + @author.lastname
  end