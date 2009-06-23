class Transaction < ActiveRecord::Base
  has_and_belongs_to_many :users  
  
  def amount_per_person
    amount/numer_of_people.to_f
  end
  
end
