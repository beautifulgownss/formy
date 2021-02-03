require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate disabled input" do
  it "finds disabled input" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/enabled"
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(id: 'disabledInput').displayed? }
  end
end

describe "automate enabled input" do
  it "finds enabled input" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/enabled"
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(id: 'input').displayed? }
    driver.find_element(id: 'input').send_keys('SHUT UP!')
  end
end
