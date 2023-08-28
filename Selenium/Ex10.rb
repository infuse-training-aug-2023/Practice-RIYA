require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://computer-database.gatling.io/computers'
column_header_text = "Computer name"

table_rows = driver.find_elements(css: 'tbody tr')  

column_values = []

table_rows.each do |row|
  cells = row.find_elements(tag_name: 'td')
  cell_text = cells[0].text  
  column_values << cell_text
end

column_values.each do |value|
  puts value
end

driver.quit

