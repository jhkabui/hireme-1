class RemoveLetterOfMotivationFromApplications < ActiveRecord::Migration[5.2]
  def change
    remove_column :applications, :letter_of_motivation, :string
  end
end
