class AddNewColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :age, :int
  end
end
