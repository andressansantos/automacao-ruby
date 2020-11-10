
Dado('que acesso a página de cadastro') do
    visit "http://parodify.qaninja.com.br"
    click_on "EXPERIMENTE AGORA"
end
  
  Quando('submeto o meu cadastro com email, senha e confirmação da senha') do |table|
    user = table.rows_hash
    find("input[name*=email]").set user[:email]
    find("input[placeholder='Sua senha secreta']").set user[:senha]
    find("input[placeholder='Confirme a senha']").set user[:senha_confirma]

    click_on "Cadastrar"

    sleep 5 # temporário

  end
  
  Então('devo ser redirecionado para a área logada') do
    expect(page).to have_css '.dashboard'
  end
  