#Classe responsável por realizar o cadastro
class Cadastro
    include HTTParty
    base_uri CONFIG['uri']
    format :json

    def post_cadastro(body, header = nil)
        header = header.nil? ? generate_header : header
        self.class.post('/register', body: body, headers: header)
    end

    def put_cadastro(body, header = nil)
        header = header.nil? ? generate_header : header
        self.class.put('/users/2', body: body, headers: header)
    end
end