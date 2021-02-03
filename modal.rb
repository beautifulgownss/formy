require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate modal" do
  it "clicks button" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/modal"
    modal = driver.find_element(id:'modal-button')
    modal.click
  end
end

describe "automate modal ok button" do
  it "clicks ok" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/modal"
    modal = driver.find_element(id:'modal-button')
    modal.click
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { driver.find_element(xpath: '//*[@id="ok-button"]').displayed? }
    driver.find_element(id: 'ok-button').click
  end
end
