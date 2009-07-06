class TransactionUsers < ActiveRecord::Base
  belongs_to :transaction
  belongs_to :user
end
