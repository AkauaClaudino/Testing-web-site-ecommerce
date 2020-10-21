require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.register_driver :selenium_chrome_headless do |app|
  Capybara::Selenium::Driver.load_selenium
  browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
    opts.args << "--headless"
    opts.args << "--disable-gpu" if Gem.win_platform?
    opts.args << "--no-sandbox"
    opts.args << "--disable-site-isolation-trials"
  end
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end


Capybara.configure do |config|
  config.default_driver =   :selenium_chrome_headless
  config.app_host =  "http://automationpractice.com"
  config.default_max_wait_time = 15
end
