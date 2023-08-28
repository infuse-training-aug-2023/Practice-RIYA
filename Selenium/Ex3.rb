require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://www.w3schools.com/'

search = driver.find_element(:id, 'search2' )
button = driver.find_element(:id, 'learntocode_searchbtn')

search.send_keys("html")
button.click

sleep 5
driver.quit