require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automating scroll" do
  it "scrolls to the bottom of a page and inputs name/date" do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/scroll"
    driver.action.send_keys(:page_down).perform
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    name = driver.find_element(id: 'name')
    name.send_keys('Courtney Yi')
    date = driver.find_element(id: 'date')
    date.send_keys('09/07/2020')
    driver.quit
  end
end
