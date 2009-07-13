# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def euro(amount)
    number_to_currency(amount, :unit => '&euro; ', :separator => ",", :delimiter => "" )
  end
end
