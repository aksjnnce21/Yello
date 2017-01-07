require "selenium-webdriver"
require "ObjectRepository"
require "Constants"

class Keywords
  # Method to enter text in text field using element name 
  def enter_valid_user_id(driver,username)    
    textfield =driver.find_element(:name , ObjectRepository::VALID_USER_ID)
    textfield.send_keys username
    rescue Exception=>msg
      puts msg
  end
  
  # Method to enter text in text field using element name 
   def enter_invalid_user_id(driver,username)    
     textfield =driver.find_element(:name , ObjectRepository::INVALID_USER_ID)
     textfield.send_keys username
     rescue Exception=>msg
       puts msg
   end
   
  # Method to enter password using element name 
     def enter_password(driver,username)    
       textfield =driver.find_element(:name , ObjectRepository::PASSWORD)
       textfield.send_keys username
       rescue Exception=>msg
         puts msg
     end
 
  # Method to click button using element id  
  def click_button(driver)          
      driver.find_element(:id, ObjectRepository::SUBMIT_BUTTON).click    
      rescue Exception=>msg
    puts msg
      end
end

