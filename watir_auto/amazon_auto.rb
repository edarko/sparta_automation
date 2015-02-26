require 'Watir'
require 'terminal/progressbar'

Terminal::ProgressBar.run mark: '#' do |bar|
browser = Watir::Browser.start "http://www.amazon.co.uk", :firefox
  20.times do
    sleep 0.1
    bar.increment!
  end
browser.element(id: "nav-iss-attach").element.send_keys "Eloquent Ruby"
  20.times do
    sleep 0.1
    bar.increment!
  end
browser.element(class: "nav-submit-button").element.click
  20.times do
    sleep 0.1
    bar.increment!
  end
browser.element(css: ".a-link-normal h2").click
  20.times do
    sleep 0.1
    bar.increment!
  end
puts "#{browser.element(css: '.a-color-price').text}"
  20.times do
    sleep 0.1
    bar.increment!
  end
browser.quit
end
