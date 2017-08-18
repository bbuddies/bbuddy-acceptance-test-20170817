class AddBudgetPage < PageBase

  def marked
    'Accounts'
  end

  def addbudget(budget)
    touch 'Budgets'
    touch 'Add'
    clear_then_enter_text('month', budget.month)
    clear_then_enter_text('amount', budget.amount)
    touch('Save')
  end
end