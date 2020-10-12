Given('I already on the page') do
@register.go_to
end
  
When('I click Sign in') do
    @register.btn_login  
end

When('I enter my email  and click on create an account') do
    @register.email
end  


Then('I insert my personal data and click on register') do    
    @register.date
    @register.btn_register  

end


Then('Authentication page must be shown') do 
   
    expect(find('.info-account')).to have_content 'Welcome to your account. Here you can manage all of your personal information and orders.'
   
end

When('I enter an invalid email and click on create an account') do
    @register.invalid_email
end
  

Then('Authentication page must not  be shown') do
   
    expect(find('#create_account_error')).to have_content 'Invalid email address.'
  
end
  









