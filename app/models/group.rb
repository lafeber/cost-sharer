class Group < ActiveRecord::Base
  # has_and_belongs_to_many :users
  # has_many :users, :through => "members", :foreign_key => "group_id"
  
  has_and_belongs_to_many :users, :join_table => "members", :foreign_key => "group_id"
  has_many :transactions
end
