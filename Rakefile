
task :test_one do
  puts 'Running Amazon UAT on Selenium...'	
  system 'ruby selenium_auto/amazon_auto.rb'
  puts 'Test Completed!'
  puts 'Running Tumblr UAT on Selenium...'	
  system 'ruby selenium_auto/tumblr_auto_post.rb'
  puts 'Test Completed!'
end

task :test_two do
  puts 'Running Amazon UAT on Watir...'	
  system 'ruby watir_auto/amazon_auto.rb'
  puts 'Test Completed!'
  puts 'Running Tumblr UAT on Watir...'	
  system 'ruby watir_auto/tumblr_auto_post.rb'
  puts 'Test Completed!'
end

task :test_three do
  puts 'Running Tumblr UAT on Capybara...'	
  system 'ruby capybara_auto/tumblr_auto_post.rb'
  puts 'Test Completed!'
end