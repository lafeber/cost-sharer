class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string   :name
      t.string   :account_id
      t.string   :login
      t.string   :activation_code
      t.string   :crypted_password,           :limit => 40
      t.string   :salt,                       :limit => 40
      t.string   :remember_token
      t.datetime :remember_token_expires_at
      t.datetime :activated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
