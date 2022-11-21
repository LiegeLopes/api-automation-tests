#language: pt

Funcionalidade: Obter usuários

    @listar-todos-usuarios
    Cenário: Listar todos os usuários disponíveis
        Dado que quero listar 2 páginas de usuários
        Quando realizo a listagem
        Então sistema deve retornar 200
        E dados do contrato de usuários são válidos