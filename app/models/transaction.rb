class Transaction < ActiveRecord::Base
  belongs_to :group
  has_many :transaction_users
  has_and_belongs_to_many :users, :through => :transaction_users
  
  #TODO rewrite this in nice ruby code?
  def total_users
    find_by_sql("SELECT SUM (tu.count) FROM transaction_users tu WHERE tu.transaction_id = #{id}")
  end
end
