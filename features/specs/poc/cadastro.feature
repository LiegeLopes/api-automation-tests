#language: pt

Funcionalidade: Cadastro

    @cadastro-sucesso
    Cenario: Realizar cadastro com sucesso
        Dado que possuo um email e senha
        Quando realizo cadastro
        Então sistema deve retornar 200
        E dados do contrato de cadastro são válidos

    @cadastro-update
    Cenario: Atualizar cadastro
        Dado que possuo um usuário já cadastrado
        Quando altero dados do cadastro com dados válidos
        Então sistema deve retornar 200
