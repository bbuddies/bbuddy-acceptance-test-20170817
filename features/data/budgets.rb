
Transform /^month ([^"]*) and amount (\d+)$/ do |month, amount|
  Budget.new(month: month, amount: amount)
end