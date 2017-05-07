require 'watir-webdriver'
require 'selenium-webdriver'
require 'rubygems'

require 'minitest/autorun'


When(/^I am on the mandm homepage$/) do
  browser = Watir::Browser.new :firefox
  @firefox = browser
  @firefox.goto 'http://www.mandmdirect.com/'
end


Then(/^I should see an image with alt "([^"]*)"$/) do |image_alt|
assert @firefox.img(:alt, image_alt).exist?
end


Given(/^I am a normal user$/) do
  #Unlogged user doesn't need to do anything
end
