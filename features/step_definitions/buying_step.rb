Given('I am logged into my account') do
    @login.go_to
    @login.btn_login
    @login.email_pass
    @login.btn_login2
    expect(page).to have_content("MY ACCOUNT")
end
  
Given('I choose one clothe') do
    @buying.women_clothe
    @buying.selecionar1 
end
  
When('I execute all steps to the end') do
    @buying.payment
end
  
Then('I see the message {string}') do |msg|
   expect(page).to have_content(msg)
end

Given('I choose some clothes') do
    @buying.women_clothe
    @buying.selecionar1 
    @buying.add
    expect(find('#total_price')).to have_content '$68.04'
end