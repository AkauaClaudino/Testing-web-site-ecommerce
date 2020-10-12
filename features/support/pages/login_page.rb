
class LoginPage
    include Capybara::DSL

    def go_to
        visit "/index.php"       
    end

    def btn_login
        find(".login").click
    end

    def btn_login2
       
        find("#SubmitLogin").click
    end

    def email_pass
        find('#email').set 'akaueteste@hotmail.com'
        find('#passwd').set 'test123'
    end

     
    def wrong_email
        find('#email').set 'wrongemail.com.com'
        find('#passwd').set 'test128'
    end
end