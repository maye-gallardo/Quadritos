Given("visito la pagina principal") do
    visit('/')
end

Then("deberia ver el mensaje {string}") do |mensaje|
    expect(page).to have_content(mensaje)
end

Then("deberia ver el logo del juego") do
    expect(page).to have_xpath('/html/body/img[1]')
end
  
Then("deberia ver el boton {string}") do |start|
    find_button(start).click
end