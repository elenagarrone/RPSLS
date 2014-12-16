Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |player, name|
  fill_in(player, :with => name)
end

When(/^click on "(.*?)"$/) do |button|
  click_button(button)
end

Then(/^it should appear "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

And(/^I should have "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I have registered$/) do
  visit '/'
  fill_in("player", :with => 'Elena')
  click_button('Start!')
end
