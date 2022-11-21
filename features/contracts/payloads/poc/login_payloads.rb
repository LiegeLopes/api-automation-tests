def user_valid 
    json = {}
    json['email'] = DATA['USUARIOS']['user1']['email']
    json['password'] = DATA['USUARIOS']['user1']['senha']
    json.to_json
end

def user_invalid
    json = {}
    json['email'] = DATA['USUARIOS']['user_invalid']['email']
    json['password'] = DATA['USUARIOS']['user_invalid']['senha']
    json.to_json
end

