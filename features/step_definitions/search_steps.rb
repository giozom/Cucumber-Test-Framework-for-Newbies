Given /^I am on the main google search$/ do
  visit "#{BASE_URL}"
end

And /^I search for "([^\"]*)"$/ do |query|
  on_page_with :google do |page|
    page.fill_in_search query
  end
end

Then /^I click on the search button$/ do
  on_page_with :google do |page|
    page.click_submit_button
  end
end

And /^I click on the "([^\"]*)" link$/ do |text|
   click_link text
end


Then /^I should land on the qastuffs blog$/ do
  on_page_with :qastuffs do |page|
    page.valid?.should == true
  end
end
