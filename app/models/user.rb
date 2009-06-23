class User < ActiveRecord::Base
  has_and_belongs_to_many :groups, :join_table => :groups_users, :foreign_key => :group_id
  has_many :transaction_users
  has_and_belongs_to_many :transactions
  
  def amount_per_transaction(transaction)
    
  end
end
