# encoding: utf-8

require 'capybara/rspec'
require 'capybara/poltergeist'

Capybara.default_driver    = :poltergeist
Capybara.javascript_driver = :poltergeist

describe "Acessando a tela de login", :type => :feature do
  before :each do
    visit 'https://the-internet.herokuapp.com/login'
  end
  it "com dados válidos, ao submeter o formulário, vejo o texto 'Qualister'" do
   	fill_in "Username", with: "tomsmit"
	fill_in "usuariosenha", with: "SuperSecretPassword!"
	click_on "Login"
	page.has_content?('Secure Area').should be_true
  end
end