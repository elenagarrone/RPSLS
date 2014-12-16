Given(/^I am on the homepage$/) do
  visit '/'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |player, name|
  fill_in(player, :with => name)
end

When(/^click on "(.*?)"$/) do |start|
  click_button(start)
end

Then(/^it should appear "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

And(/^I should have "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end
