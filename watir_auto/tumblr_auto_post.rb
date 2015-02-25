require 'Watir'
require 'Watir-WebDriver'

browser = Watir::Browser.start "http://www.tumblr.com/login", :firefox	
browser.input(id: "signup_email").send_keys "edarko@spartaglobal.com"
browser.input(id: "signup_password").send_keys "chrome954"
browser.button(id: "signup_forms_submit").click
browser.element(class: "icon_post_text").wait_until_present
browser.element(class: "icon_post_text").click
browser.div(class: "editor").send_keys "This is a test"
browser.element(css: ".editor.editor-richtext").send_keys "This is a procedure script!"
browser.button(class: "create_post_button").click
browser.element(class: "icon_post_text").wait_until_present
browser.a(class: "tab_anchor").click
check = browser.a href: "http://edarko555.tumblr.com"

puts "Success" if check.text == "edarko555"
