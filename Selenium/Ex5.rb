require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://www.google.com/'

search_id = 'APjFqb'
search = driver.find_element(:id, search_id)

search.send_keys("cats")
search.send_keys(:enter)


driver.quit