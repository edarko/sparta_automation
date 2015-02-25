require 'Watir'
require 'Watir-WebDriver'

browser = Watir::Browser.new :firefox	
browser.goto "http://www.tumblr.com/login"
browser.input(id: "signup_email").send_keys "edarko@spartaglobal.com"
browser.input(id: "signup_password").send_keys "chrome954"
browser.button(id: "signup_forms_submit").click
browser.element(class: "icon_post_photo").wait_until_present
browser.element(class: "icon_post_photo").click
browser.element(class: "dropzone-add-url-icon").click
browser.element(css: ".editor.editor-plaintext").send_keys "http://slodive.com/wp-content/uploads/2013/04/genghis-khan-quotes/genghis-khan-quote.jpg"
browser.element(css: ".editor.editor-plaintext").send_keys :enter
browser.button(class: "create_post_button").click
check = browser.a href: "http://edarko555.tumblr.com"

puts "Success" if check.text == "edarko555" 
