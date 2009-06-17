class CreateTransactionUsers < ActiveRecord::Migration
  def self.up
    create_table :transaction_users do |t|
      t.integer :transction_id
      t.integer :user_id
      t.integer :count, :default => 1
      t.timestamps
    end
    
    add_index :transaction_id
    add_index :user_id
  end

  def self.down
    drop_table :transaction_users
  end
end
