class Group < ActiveRecord::Base
  has_and_belongs_to_many :users, :join_table => "groups_users", :foreign_key => "users_id"
  
end
