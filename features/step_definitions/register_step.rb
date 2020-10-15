Given('I already on the page') do
    @login.go_to
end
  
When('I click Sign in') do
    @login.btn_login  
end

When('I enter my email  and click on create an account') do
    @register.email
end  

Then('I insert my personal data and click on register') do    
    @register.date
    @register.btn_register
    sleep 2
end


Then('Authentication page must be shown') do 
   
    expect(page).to have_content @register.message_register
    sleep 2
end

When('I enter an invalid email and click on create an account') do
    @register.invalid_email
end
  

Then('Authentication page must not  be shown') do   
    expect(page).to have_content @register.message_not_register  
    sleep 2
end
  









