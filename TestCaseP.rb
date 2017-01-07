require "selenium-webdriver"
require "Keywords"
require "test/unit"
require "ObjectRepository"

class TestCaseP < Test::Unit::TestCase
  
  # Initialize driver and URL
  def setup
    Selenium::WebDriver::Chrome.driver_path = '\chromedriver.exe'
    @driver = Selenium::WebDriver.for :chrome
    @driver.navigate.to Constants::URL
  end
  
  #Test case to check if login is successful
  def test_successfull_login  
   Keywords.new().enter_valid_user_id(@driver,"user-id")
   Keywords.new().enter_password(@driver,"password")
   Keywords.new().click_button(@driver)
   assert_equal(ObjectRepository::NEXT_PAGE_TITLE,@driver.title(),"Login Successful")
  end
  
  #Test case to check if login is unsuccessful
  def test_unsuccessful_login
    Keywords.new().enter_invalid_user_id(@driver,"invalid-user-id")
    Keywords.new().enter_password(@driver,"password")
    Keywords.new().click_button(@driver)
    assert_equal(ObjectRepository::LOGIN_PAGE_TITLE,@driver.title(),"Login UnSuccessful")
  end
 
  #Close
  def teardown
     @driver.quit()
   end 
end