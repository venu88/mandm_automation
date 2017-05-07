When(/^I go to the basket$/) do
  @firefox.element(:css, "#basketsummary > a > i").click
  @firefox.button(:class, "goToBasket").when_present.click
end

Then(/^I should see the item "(.*)" added to the basket$/) do |item_name|
  assert @firefox.link(:text, item_name).exists?
end

Then(/^I should see the item in the basket$/) do
  assert @firefox.link(:text, @item).exists?
end
