Then(/^I should be on search result page$/) do
  sleep 15
  assert @firefox.span(:class, "fourColumn").exist?
end


And(/^I select the first item$/) do
  @item = @firefox.element(:css, "div.plitem:nth-child(1) > div:nth-child(2) > p:nth-child(1) > strong:nth-child(1)").when_present.text
  puts "This the item name = #{@item}"
  @firefox.img(:alt, @item).when_present.click
end

