#language: pt

Funcionalidade: Login
    Eu como usuário do sistema
    Quero realizar login
    Para acessar o dashboard

    @login-sucesso
    Cenario: Realizar login com sucesso
        Dado que o usuário é 'válido'
        Quando realizar login
        Então sistema deve retornar 200
        E dados do contrato são válidos

    @tentativa-login-sem-cadastro
    Cenario: Tentar realizar login sem possuir cadastro no sistema
        Dado que o usuário é 'inválido'
        Quando realizar login
        Então sistema deve retornar 400

