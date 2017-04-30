class AddRemainingFieldsToCustomer < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :username, :string, unique: true

  	add_column :users, :state, :int
  end
end
