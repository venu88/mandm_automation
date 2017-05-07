When(/^I click on the image with alt "([^"]*)"$/) do |img_alt|
  @firefox.img(:alt, img_alt).click
end

Then(/^I must be on a page with "([^"]*)" h1$/) do |h1_text|
  sleep 5
  assert @firefox.h1(:text, h1_text ).exist?
end

When(/^I click on the ul with class "([^"]*)"$/) do |ul_class|
  @firefox.ul(:class, ul_class ).when_present.click
end

When(/^I click on link with text "([^"]*)"$/) do |url_text|
  @firefox.link(:text, url_text ).when_present.click
end

And(/^I click on span with text "([^"]*)"$/) do |span_text|
  @firefox.span(:text, span_text).when_present.click
end


When(/^I enter "([^"]*)" into the textfield with id "([^"]*)"$/) do |text_to_enter, textfield_id|
  @firefox.text_field(:id, textfield_id).when_present.set(text_to_enter)
end

And(/^I click on the button with id "([^"]*)"$/) do |button_id|
  @firefox.button(:id, button_id).click
end


Then(/^I click on first item with img with "([^"]*)"$/) do |item_name|
  sleep 15
  @firefox.img(:alt, item_name).click
end

And(/^I select "([^"]*)" option from the dropdown with class "([^"]*)"$/) do |option, dropdown_class|
  @firefox.select_list(:class, dropdown_class).select(option)
end

When(/^I click on link with id "([^"]*)"$/) do |linkid|
  @firefox.link(:id, linkid).when_present.click
end

And(/^I click on the radio button with id "([^"]*)"$/) do |radioid|
  @firefox.radio(:id, radioid).set
end

Then(/^I click on the button with class "([^"]*)"$/) do |continue_click|
   @firefox.button(:class, continue_click).click
end

And(/^I select "([^"]*)" option from the dropdown with id "([^"]*)"$/) do |option, dropdown_id|
  @firefox.select_list(:id, dropdown_id).when_present.select(option)
end


And(/^I click on link with id "([^"]*)" and select address "([^"]*)"$/) do |linkid, option|
  @firefox.link(:id, linkid).when_present.select(option)
end

Then(/^I should see "([^"]*)" message on the page$/) do |message|
  sleep 4
  assert (/#{message}/i.match(@firefox.text)) != nil
end

And(/^I click on the link customer name$/) do
  @firefox.element(:css, ".unstyled > li:nth-child(3) > a:nth-child(1)").when_present.click

end
