require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

include Capybara::DSL

# Require Selenium::WebDriver::Chrome::Options
require 'selenium/webdriver/chrome/options'

options = Selenium::WebDriver::Chrome::Options.new(args: ['--no-default-browser-check', '--disable-dev-shm-usage'])

Capybara.app_host = "http://#{ENV['WEBSITE_URL']}"
Capybara.run_server = false
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :remote,
    url: "http://#{ENV['SELENIUM_HOST']}:#{ENV['SELENIUM_PORT']}/wd/hub",
    options: options
  )
end
Capybara.default_driver = :selenium

describe "Example page render unit tests" do
  it "Shows the Explore California logo" do
    visit('/')
    expect(page.has_selector? '.logo').to be true
  end
end
