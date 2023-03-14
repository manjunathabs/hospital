class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.decimal :mobile_number
      t.string :last_name
      t.string :gender
      t.string :date_of_birth
      t.string :address

      t.timestamps
    end
  end
end
