require 'rails_helper'

feature 'Visitor visit home page' do

  scenario 'and view a welcome message' do
    #criação de dados (setup dos dados prévios)

    #navegação/interação do usuário (teste em si)
    visit root_path

    #expectativas/validações (aceitação do que deve acontecer)
    expect(page).to have_content('Bem-vindo ao app de Traduções')
    expect(page).to have_css('h1', text: 'Bem-vindo ao app de Traduções')
  end

  scenario 'and view translations' do
    #criação de dados
    Translation.create(portuguese: 'Teclado', english: 'Keyboard')

    #navegação
    visit root_path

    #expectativa
    expect(page).to have_content('Teclado')
    expect(page).not_to have_content('Keyboard')

  end

end
