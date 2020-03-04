class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :telephone, :string
    add_column :users, :cv, :text
    add_column :users, :address, :text
    add_column :users, :grade_point_average, :float
    add_column :users, :highest_education_attained, :string
  end
end
