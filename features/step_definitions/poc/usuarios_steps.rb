Dado('que quero listar {int} páginas de usuários') do |int|
    @paginas = int
end
    
Quando('realizo a listagem') do
    @response = @usuarios.get_users(@paginas)
end

Então('dados do contrato de usuários são válidos') do
    expect(@response).to match_json_schema('usuarios_schema')
end