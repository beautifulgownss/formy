#rspec basic template
require "selenium-webdriver"
require "webdrivers"
require "rspec"

describe "automate buttons" do
  it "clicks buttons" do
    #initialize webdriver for chrome
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://formy-project.herokuapp.com/buttons"
    
    #first row buttons
    driver.find_element(xpath:'/html/body/div/form/div[1]/div/div/button[1]').click
    driver.find_element(xpath: '/html/body/div/form/div[1]/div/div/button[2]').click
    driver.find_element(xpath:'/html/body/div/form/div[1]/div/div/button[3]').click
    driver.find_element(xpath: '/html/body/div/form/div[1]/div/div/button[4]').click
    driver.find_element(xpath: '/html/body/div/form/div[1]/div/div/button[5]').click
    driver.find_element(xpath: '/html/body/div/form/div[1]/div/div/button[6]').click
    
    #second row buttons
    driver.find_element(xpath: '/html/body/div/form/div[2]/div/div/div/button[1]').click
    driver.find_element(xpath: '/html/body/div/form/div[2]/div/div/div/button[2]').click
    driver.find_element(xpath: '//html/body/div/form/div[2]/div/div/div/button[3]').click
    
    #last row buttons
    driver.find_element(xpath: '/html/body/div/form/div[3]/div/div/div/button[1]').click
    driver.find_element(xpath: '/html/body/div/form/div[3]/div/div/div/button[2]').click
    
    #last row dropdown
    dropdown = driver.find_element(id:'btnGroupDrop1')
    dropdown.click
    option_1 = driver.find_element(xpath:'/html/body/div/form/div[3]/div/div/div/div/div/a[1]')
    option_1.click
    driver.quit
    end
end
