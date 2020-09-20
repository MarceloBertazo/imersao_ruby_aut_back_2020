Entao('recebo uma lista de autores') do                                      
    expect(@response.size).to be >= 1
    @rand = @response.sample
    expect(@rand['ID']).to be_kind_of(Numeric)
    expect(@rand['IDBook']).to be_kind_of(Numeric)
    expect(@rand['FirstName']).to be_kind_of(String)
    expect(@rand['LastName']).to be_kind_of(String)

    puts @rand

  end          
  
  Entao('recebo um autor') do
    expect(@response['ID']).to be_kind_of(Numeric)
    expect(@response['IDBook']).to be_kind_of(Numeric)
    expect(@response['FirstName']).to be_kind_of(String)
    expect(@response['LastName']).to be_kind_of(String)

  end