#Classe responsável por fazer o login
class Usuarios
    include HTTParty
    base_uri CONFIG['uri']
    format :json

    def get_users(header = nil, pages)
        header = header.nil? ? generate_header : header
        self.class.get("/users?page=#{pages}", headers: header)
    end
end