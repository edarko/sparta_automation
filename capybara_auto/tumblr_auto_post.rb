require 'capybara'

title = 'Test'
text = 'This is my procedure script'
session = Capybara::Session.new (:selenium)
session.visit("http://www.tumblr.com/login")
session.fill_in "signup_email", :with => "edarko@spartaglobal.com"
session.fill_in "signup_password", :with => "chrome954"
session.find_button("signup_forms_submit").click
sleep 9
session.find("#new_post_label_text").click
session.find(".title-field .editor-plaintext").set title
session.find(".caption-field .editor-richtext").set text
session.find(".create_post_button").click
sleep 5
session.find("#home_button .tab_anchor").click	
puts "Success" if session.has_content? text
