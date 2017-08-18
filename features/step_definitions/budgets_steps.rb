When(/^add a budget with month "([^"]*)" and amount (\d+)$/) do |month, amount|
  touch 'Budgets'
  touch 'Add'
  clear_then_enter_text 'month', month
  clear_then_enter_text 'amount', amount
  touch 'Save'
end

Then(/^budgets list contains following$/) do |table|
  wait_for_text table.hashes[0]['month']
  wait_for_text table.hashes[0]['amount']
end

Given(/^month "([^"]*)" and amount (\d+)$/) do |month, amount|
   touch 'Budgets'
     touch 'Add'
     clear_then_enter_text 'month', month
     clear_then_enter_text 'amount', amount
     touch 'Save'
end

Then(/^budgets not contains amount (\d+)$/) do |amount|
    wait_for_text_does_not_exist amount
end