require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome


driver.get 'https://www.globalsqa.com/demo-site/sliders/#Steps'


slider_handle = driver.find_element(:xpath, ``)


slider_width = slider_handle.size.width
desired_value = 60

offset_x = (slider_width * desired_value / 100) - (slider_width / 2)
driver.action.drag_and_drop_by(slider_handle, offset_x, 0).perform


sleep 1


style_attribute = slider_handle.attribute('style')
left_position = style_attribute.match(/left: (\d+%);/)[1]

slider_max_value = 100
slider_value = (left_position.to_f / slider_width) * slider_max_value

puts "Slider Value: #{slider_value}"

driver.quit
