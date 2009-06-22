class GroupsUsers < ActiveRecord::Base
  belongs_to :user do
    def balance
      transactions.find :all, :conditions => ["transactions.group_id = #{group_id}"]
    end
  end
  belongs_to :group
  
  def can_be_removed?
    
  end
  
end
