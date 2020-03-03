class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :adress
      t.string :telephone
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
