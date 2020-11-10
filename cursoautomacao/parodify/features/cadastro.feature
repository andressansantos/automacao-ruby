#language: pt

Funcionalidade: Cadatro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenário: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com email, senha e confirmação da senha
            | email          | fernando@yahoo.com |
            | senha          | pwd123             |
            | senha_confirma | pwd123             |
        Então devo ser redirecionado para a área logada

    Esquema do Cenário: Tentativa de Cadastro

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem: "<mensagem_saida>"

        Exemplos:
            | email              | senha  | confirma_senha | mensagem_saida                       |
            |                    | pwd123 | pwd123         | Oops! Informe seu email.             |
            | fernando@yahoo.com |        |                | Oops! Informe sua senha.             |
            | fernando@yahoo.com | pwd123 | abc1234        | Oops! Senhas não são iguais.         |
            |                    |        |                | Oops! Informe seu email e sua senha. |
