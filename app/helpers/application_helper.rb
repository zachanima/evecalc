module ApplicationHelper
  def isk number
    number_to_currency(number, unit: 'ISK', format: '%n %u')
  end
end
