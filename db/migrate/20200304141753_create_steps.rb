class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.references :jobs, foreign_key: true

      t.timestamps
    end
  end
end
