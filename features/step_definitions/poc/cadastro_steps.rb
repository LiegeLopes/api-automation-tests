Dado('que possuo um email e senha') do
    @request = user_cadastro
end
  
Quando('realizo cadastro') do
    @response = @cadastro.post_cadastro(@request)
end

Então('dados do contrato de cadastro são válidos') do
    expect(@response).to match_json_schema('cadastro_schema')
end

Dado('que possuo um usuário já cadastrado') do
    @request = user_ja_cadastrado
end
  
Quando('altero dados do cadastro com dados válidos') do
    @response = @cadastro.put_cadastro(@request)
end