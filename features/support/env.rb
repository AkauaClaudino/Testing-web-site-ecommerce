require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome,timeout: 30)
end


Capybara.configure do |config|
  config.default_driver =   :selenium
  config.app_host =  "http://automationpractice.com"
  config.default_max_wait_time = 10
end


# Para executar todos os cenários no chrome e gerar um report html
#cucumber -f pretty -f html -o report.html BROWSER=chrome