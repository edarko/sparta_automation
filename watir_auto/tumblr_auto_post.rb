require 'Watir'
require 'Watir-WebDriver'
require 'terminal/progressbar'

Terminal::ProgressBar.run mark: '#' do |bar|
browser = Watir::Browser.start "http://www.tumblr.com/login", :firefox	
browser.input(id: "signup_email").send_keys "edarko@spartaglobal.com"
browser.input(id: "signup_password").send_keys "chrome954"
browser.button(id: "signup_forms_submit").click
  25.times do
    sleep 0.1
    bar.increment!
  end
browser.element(class: "icon_post_text").wait_until_present
browser.element(class: "icon_post_text").click
  25.times do
    sleep 0.1
    bar.increment!
  end
browser.div(class: "editor").send_keys "This is a test"
browser.element(css: ".editor.editor-richtext").send_keys "This is a procedure script!"
browser.button(class: "create_post_button").click
  25.times do
    sleep 0.1
    bar.increment!
  end
browser.element(class: "icon_post_text").wait_until_present
browser.a(class: "tab_anchor").click
  25.times do
    sleep 0.1
    bar.increment!
  end
puts "Post to blog has been successful!" if browser.text.include? "edarko555"
browser.quit
end

