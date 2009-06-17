class User < ActiveRecord::Base
  has_and_belongs_to_many :transactions
  
  def amount_per_transaction(transaction)
    
  end
end
