require 'faker'

class RegisterPage
    include Capybara::DSL

   
    def email
        find('#email_create').set Faker::Internet.email  
        find('#SubmitCreate').click
    end

    def btn_register
        click_button 'Register'
    end
    
    
    def date         
        #YOUR PERSONAL INFORMATION
        find('#id_gender1').click
        find('#customer_firstname').set Faker::Name.name 
        find('#customer_lastname').set Faker::Name.name 
        find('#email').click
        find('#passwd').set 'test123'    
        find("#uniform-days option[value='5']").click 
        find("#uniform-months option[value='5']").click
        find("#uniform-years option[value='2000']").click
         
        #YOUR ADDRESS    
        find('#firstname').set Faker::Name.name 
        find('#lastname').set Faker::Name.name 
        find('#company').set Faker::Name.name      
        find('#address1').set Faker::Address.street_name
        find('#address2').set Faker::Address.street_name  
        find('#city').set Faker::Address.city 
        find("#id_state option[value='5']").click
        find('#postcode').set '00000'    
        find("#id_country option[value='21']").click        
        find("#other").set Faker::Lorem.paragraph
        find('#phone').set Faker::Number.number
        find('#phone_mobile').set Faker::Number.number
        find('#alias').set 'iojasdajiosji'
     
    end


    def invalid_email
        find('#email_create').set 'Email Inválido '
        find('#SubmitCreate').click
     end


   def message_register
      find('.info-account').text
   end

   def message_not_register 
     find('#create_account_error').text
   end
     
end

    