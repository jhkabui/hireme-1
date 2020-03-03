class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.references :user, foreign_key: true
      t.string :status
      t.text :extra_step
      t.boolean :accepted
      t.text :letter_of_motivation

      t.timestamps
    end
  end
end
