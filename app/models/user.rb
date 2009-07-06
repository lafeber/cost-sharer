class User < ActiveRecord::Base
  has_many :members
  has_many :transaction_users
  has_and_belongs_to_many :transactions
  
end
