class Group < ActiveRecord::Base  
  has_and_belongs_to_many :users, :join_table => "members", :foreign_key => "group_id"
  has_many :transactions
  has_many :members
end
