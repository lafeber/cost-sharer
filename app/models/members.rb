class Members < ActiveRecord::Base
  belongs_to :user
  belongs_to :group

  def balance
    transactions.find :all, :conditions => ["transactions.group_id = #{group_id}"]
  end  

  def can_be_removed?
    
  end
  
end
