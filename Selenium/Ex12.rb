require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get "https://www.myntra.com/"

search_input = driver.find_element(class: 'desktop-searchBar')
search_input.send_keys('shoes')
search_input.send_keys(:return)

wait = Selenium::WebDriver::Wait.new(timeout: 10)
wait.until { driver.find_element(class: 'product-base') }

first_product = driver.find_element(class: 'product-base')
first_product.click

driver.switch_to.window(driver.window_handles.last)

driver.execute_script('window.scrollBy(0, 300);')

product_title = driver.find_element(class: 'pdp-title')
puts "Product Title: #{product_title.text}"

product_price = driver.find_element(class: 'pdp-price')
puts "Product Price: #{product_price.text}"

open_pofile = driver.find_element(xpath: '//div[2]/div[2]/div/div[1]/span[1]')
open_pofile.click

driver.quit
