class Group < ActiveRecord::Base
  has_many :users, :through => :members
  has_many :transactions
  has_many :members
end
