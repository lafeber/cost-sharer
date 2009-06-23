class TransactionsUsers < ActiveRecord::Base
  belongs_to :transaction
  belongs_to :user
end
