#b = a.find_elements tag_name: "Options"
require 'Selenium-WebDriver'

browser = Selenium::WebDriver.for :firefox
browser.get "http://www.amazon.co.uk"
a = browser.find_element id: "twotabsearchtextbox"
a.send_keys "Eloquent Ruby"
a.submit
#wait
b = browser.find_elements class: "a-link-normal"
#c = []
wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until (b.each {|b| b.click if b.displayed? == true})
c = browser.find_element class: "a-color-price"
c.text
