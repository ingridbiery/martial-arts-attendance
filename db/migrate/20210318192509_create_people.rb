class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.integer :family_id

      t.timestamps
    end
    add_index :people, :family_id
  end
end
