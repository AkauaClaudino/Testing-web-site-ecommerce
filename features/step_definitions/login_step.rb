Given('I want access my account on the home page') do
    @login.go_to
    @login.btn_login
   
  end
  
  When('I enter email and password in form login') do
    @login.email_pass
  end
  
  When('I click in Sign in') do
   @login.btn_login2

  end
  
  Then('My account text must be shown') do

    expect(page).to have_content("MY ACCOUNT")
  
  end
  
  When('I enter an invalid email and password in form login') do
   @login.wrong_email
  end
  
  Then('show a message and does not sign in') do
    expect(page).to have_content("Invalid email address.")
  end