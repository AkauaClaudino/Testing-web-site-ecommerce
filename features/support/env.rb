require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"


Capybara.register_driver :selenium_chrome_headless do |app|
  Capybara::Selenium::Driver.load_selenium
  browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
    opts.args << '--headless'
    opts.args << '--disable-gpu' if Gem.win_platform?
    # Workaround https://bugs.chromium.org/p/chromedriver/issues/detail?id=2650&q=load&sort=-id&colspec=ID%20Status%20Pri%20Owner%20Summary
    opts.args << '--disable-site-isolation-trials'
  end
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
end


Capybara.configure do |config|
  config.default_driver =   :selenium_chrome_headless
  config.app_host =  "http://automationpractice.com"
  # config.default_max_wait_time = 10
end
