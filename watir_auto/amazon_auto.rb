require 'Watir'

browser = Watir::Browser.start "http://www.amazon.co.uk", :firefox
search = browser.element id: "nav-iss-attach"
search.element.send_keys "Eloquent Ruby"
press = browser.element class: "nav-submit-button"
press.element.click
book = browser.element css: ".a-link-normal h2"
book.click
#puts "browser.element css: ".a-color-price""
