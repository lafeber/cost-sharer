class Transaction < ActiveRecord::Base
  has_and_belongs_to_many :users
  
  #TODO rewrite this in nice ruby code?
  def total_users
    find_by_sql("SELECT SUM (tu.count) FROM transaction_users tu WHERE tu.transaction_id = #{id}")
  end
end
