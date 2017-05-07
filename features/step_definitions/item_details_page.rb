And(/^I select the "(.*)" size for the item$/) do |size|
    @firefox.div(:class, "buySizeChartButton").wait_until_present
  @firefox.element(:css, "button.dropdown-toggle").click
  @firefox.span(:text, size).click
end


Then(/^I Add the item to the basket$/) do
  @firefox.h2(:class,"box" ).click
end

