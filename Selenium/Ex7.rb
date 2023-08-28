require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://testpages.herokuapp.com/styled/basic-html-form-test.html'

dropdown = driver.find_element(name: 'dropdown')
select = Selenium::WebDriver::Support::Select.new(dropdown)

i = 3
select.select_by(:index, i)

selected_value = select.selected_options[0].attribute('value')
puts "Selected option's value: #{selected_value}"

sleep 2
driver.quit
