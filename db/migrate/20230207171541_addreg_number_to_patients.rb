class AddregNumberToPatients < ActiveRecord::Migration[6.0]
  def change
        add_column :patients, :reg_number, :string
  end
end
