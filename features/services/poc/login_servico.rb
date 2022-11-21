#Classe responsável por fazer o login
class Login
    include HTTParty
    base_uri CONFIG['uri']
    format :json

    def post_login(body, header = nil)
        header = header.nil? ? generate_header : header
        self.class.post('/login', body: body, headers: header)
    end
end