# Instanciando e configurando o navegador web
navegador = Selenium::WebDriver.for :firefox
navegador.manage.window.maximize()
navegador.manage.timeouts.implicit_wait = 5

# Acessando a página inicial do QuickLoja
navegador.get('https://the-internet.herokuapp.com/login')

# Preenchendo o formulário
navegador.find_element(:id, 'Username').send_keys("tomsmith")
navegador.find_element(:id, 'usuariosenha').send_keys("SuperSecretPassword!")

# Preenchendo o formulário
navegador.find_element(:id, 'Username').send_keys("tomsmith")
navegador.find_element(:id, 'usuariosenha').send_keys("SuperSecretPassword!")
navegador.find_element(:tag_name, 'Login').click()

# Validando login com sucesso
  expect(navegador.title()).to eq("Secure Area")
  
# Fazer logoff
navegador.find_element(:link_text, 'Logout').click()


# Fechar o navegador
navegador.close()