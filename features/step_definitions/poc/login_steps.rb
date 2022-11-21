Dado('que o usuário é {string}') do |usuario|
  case usuario
  when 'válido'
    @user = user_valid
  when 'inválido'
    @user = user_invalid
  end
  print_log(payload_envio: @user)
end

Quando('realizar login') do
    @response = @login.post_login(@user)
    print_log(url: @response)
    print_log(payload_resposta: @response)
end
  
Então('sistema deve retornar {int}') do |int|
    expect(@response.code).to eq(int)
end
  
Então('dados do contrato são válidos') do
    expect(@response).to match_json_schema('login_schema')
end

