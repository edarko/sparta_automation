require 'Selenium-WebDriver'

wait = Selenium::WebDriver::Wait.new(timeout => 8)
browser = Selenium::WebDriver.for :firefox

browser.get "http://www.tumblr.com/login"
a = browser.find_element id: "signup_email"
a.send_keys "edarko@spartaglobal.com"
b = browser.find_element id: "signup_password"
b.send_keys "chrome954"


c = browser.find_element id: "signup_forms_submit"
c.click

wait.until(d = browser.find_element id: "new_post_label_text")
d.click
e = browser.find_element class: "editor"
e.send_keys "This is my next post"


 
