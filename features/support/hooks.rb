Before do
    
    @register = RegisterPage.new
    @login = LoginPage.new
    @buying = BuyingPage.new

end

After do |scenario|  
  
    shot = page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
    attach(shot, "image/png")

end


