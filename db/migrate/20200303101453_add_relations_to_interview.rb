class AddRelationsToInterview < ActiveRecord::Migration[5.2]
  def change
    add_reference :interviews, :application, foreign_key: true
    add_reference :jobs, :application, foreign_key: true
  end
end

