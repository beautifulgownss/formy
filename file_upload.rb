require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automating uploading a file" do
  it "upload file and reset form " do
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/fileupload"
    choose = driver.find_element(xpath:'/html/body/div/form/div/div/span[1]/button')
    choose.click
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    choose.send_keys('C://selfie.jpg')
    wait = Selenium::WebDriver::Wait.new(timeout: 5)
    resets = driver.find_element(xpath: '/html/body/div/form/div/div/span[2]/button')
  end
end
