class CreateDashboards < ActiveRecord::Migration
  def change
    create_table :dashboards do |t|
      t.string :dash_name
      t.integer :blog_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
