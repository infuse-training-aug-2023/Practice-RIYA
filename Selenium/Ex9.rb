require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://cosmocode.io/automation-practice-webtable/'

header_row = driver.find_element(tag_name: 'tr')

header_cells = header_row.find_elements(tag_name: 'td')

header_cells.each do |header_cell|
  header_text = header_cell.find_element(tag_name: 'strong').text
  puts header_text
end

driver.quit







