require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
driver = Selenium::WebDriver.for :chrome

driver.get 'https://demo.automationtesting.in/Register.html'

radioButton = driver.find_element(css: "input[type='radio'][name='radiooptions'][value='FeMale']")
checkbox = driver.find_element(css: "input[type='checkbox'][value='Movies']")
radioButton.click
checkbox.click

driver.quit