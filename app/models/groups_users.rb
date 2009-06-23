class GroupsUsers < ActiveRecord::Base
  belongs_to :user
  belongs_to :group
  
  def total_amount
    #user.transactions.
  end
end
