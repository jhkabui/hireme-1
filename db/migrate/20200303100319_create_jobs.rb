class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :location
      t.text :description
      t.string :category
      t.text :requirement

      t.timestamps
    end
  end
end
