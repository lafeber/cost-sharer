class Group < ActiveRecord::Base
  has_and_belongs_to_many :users
  #has_one :admin, :through => :users, :join_table => "groups_users", :conditions => "groups_users.is_admin = true"
  has_many :transactions
end
