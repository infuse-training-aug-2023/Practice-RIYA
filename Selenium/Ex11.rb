require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://the-internet.herokuapp.com/tables'

row_index = 2
column_index = 3

table_body = driver.find_element(css: 'tbody')
rows = table_body.find_elements(tag_name: 'tr')

desired_row = rows[row_index]

cells = desired_row.find_elements(tag_name: 'td')

desired_cell_value = cells[column_index].text

puts "Value of the cell: #{desired_cell_value}"

driver.quit
