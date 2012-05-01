module ApplicationHelper
  def isk number
    number_to_currency(number / 100.0, unit: 'ISK', format: '%n %u')
  end
end
