class CreateTransactions < ActiveRecord::Migration
  def self.up
    create_table :transactions do |t|
      t.integer :group_id
      t.float :amount
      t.string :name
      t.datetime :paid_at
      t.integer :number_of_people

      t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
