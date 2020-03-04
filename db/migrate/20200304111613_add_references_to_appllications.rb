class AddReferencesToAppllications < ActiveRecord::Migration[5.2]
  def change
    add_reference :applications, :job, index: true
  end
end
