class AddRemainingFieldsToCustomer < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :state, :int, unique: true

  	add_column :users, :login, :string, null: false, unique: true
  end
end
