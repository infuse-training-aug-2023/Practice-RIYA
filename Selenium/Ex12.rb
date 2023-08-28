require 'selenium-webdriver'

class MyntraTest
  def initialize
    Selenium::WebDriver::Chrome::Service.driver_path = 'C:\Users\adity\Desktop\Drivers\chromedriver-win64\chromedriver-win64\chromedriver.exe'
    @driver = Selenium::WebDriver.for :chrome
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
  end

  def open_myntra
    @driver.get "https://www.myntra.com/"
  end

  def maximize_browser_window
    @driver.manage.window.maximize
  end

  def search_for_product(product_name)
    search_input = @driver.find_element(class: 'desktop-searchBar')
    search_input.send_keys(product_name)
    search_input.send_keys(:return)
  end

  def click_first_product
    @wait.until { @driver.find_element(class: 'product-base') }
    first_product = @driver.find_element(class: 'product-base')
    first_product.click
  end

  def switch_to_new_tab
    @driver.switch_to.window(@driver.window_handles.last)
  end

  def scroll_down(amount)
    @driver.execute_script("window.scrollBy(0, #{amount});")
  end

  def get_product_title
    product_title = @driver.find_element(class: 'pdp-title')
    product_title.text
  end

  def get_product_price
    product_price = @driver.find_element(class: 'pdp-price')
    product_price.text
  end

  def close_browser
    @driver.quit
  end

  def perform_test_flow(product_name, scroll_amount)
    open_myntra
    maximize_browser_window
    search_for_product(product_name)
    click_first_product
    switch_to_new_tab
    scroll_down(scroll_amount)
    title = get_product_title
    price = get_product_price
    close_browser

    puts "Product Title: #{title}"
    puts "Product Price: #{price}"
  end
end

test = MyntraTest.new
test.perform_test_flow('dresses', 300)
