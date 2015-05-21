require 'capybara/cucumber'
require 'sauce/cucumber'
require 'sauce'

Sauce.config do |c|
  c[:start_tunnel] = false
  c[:browser] = "Firefox"
  c[:version] = 21
  c[:os] = "Windows"
end

After do |scenario|
	puts "in after..!"
end

at_exit do
  puts 'in at exit..!'
end


# Around('@selenium') do |scenario, block|
#   JenkinsSauce.output_jenkins_log(scenario)
#   block.call
#   ::Capybara.current_session.driver.quit
# end