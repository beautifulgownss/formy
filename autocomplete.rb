require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate autocomplete" do
  it "enters address " do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/autocomplete"
    driver.find_element(id:'autocomplete').send_keys('3450 Roxboro Road Northeast, Atlanta, GA, USA')
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    wait.until { driver.find_element(class: 'pac-item').displayed? }
    driver.find_element(class: 'pac-item').click
    driver.quit
  end
end
