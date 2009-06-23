class AddNumberOfPeopleToTransaction < ActiveRecord::Migration
  def self.up
    add_column :transactions, :number_of_people, :integer
  end

  def self.down
    remove_column :transactions, :number_of_people
  end
end
