Given /^I am on beachbody homepage$/ do
  visit "http://www.beachbody.com"
end

Then 'I should see the slideshow' do
  page.find(:css, '#contentHome .jslideshow').visible?.should == true
end

Then 'I should see the toolbar header' do
  page.find(:css, '#header').visible?.should == true
end

And /^I click the "(.*)" link in the left rail$/ do | linkType |
  selector = "ul.sbmenu li a[href*='#{linkType.gsub(' ', '-').downcase}']"
  page.find(:css, selector).click
end

Then /^I should be on the "(.*)" page$/ do | linkType |
  current_url.include?("#{linkType.gsub(' ', '-').downcase}").should == true

  # TODO: verify elements are present on page
end
