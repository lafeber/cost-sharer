class CreateTransactionsUsers < ActiveRecord::Migration
  def self.up
    create_table :transactions_users do |t|
      t.integer :transaction_id
      t.integer :user_id
      t.integer :count, :default => 1
      t.timestamps
    end
    
    add_index :transactions_users, :transaction_id
    add_index :transactions_users, :user_id
  end

  def self.down
    drop_table :transactions_users
  end
end
