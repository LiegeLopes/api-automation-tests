def user_cadastro
    json = {}
    json['email'] = DATA['USUARIOS']['user_cadastro']['email']
    json['password'] = DATA['USUARIOS']['user_cadastro']['senha']
    json.to_json
end

def user_ja_cadastrado
    json = {}
    json['name'] = DATA['USUARIOS']['user_ja_cadastrado']['name']
    json['job'] = DATA['USUARIOS']['user_ja_cadastrado']['job']
    json.to_json
end