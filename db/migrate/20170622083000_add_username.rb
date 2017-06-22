class AddUsername < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string  #table name, column name, type
  end
end
