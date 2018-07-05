def total_accrued_loan_amount(principal_loan, percentage_rate, periods_in_years)
  annual_percentage_rate = percentage_rate / 100
  principal_loan * (1 + annual_percentage_rate * periods_in_years)
end
