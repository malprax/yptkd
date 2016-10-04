class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :nama
      t.string :nidn
      t.integer :education_id
      t.integer :functional_allowance_id
      t.integer :structural_allowance_id
      t.integer :special_allowance_id
      t.integer :performance_allowance_id
      t.integer :classification_id

      t.timestamps null: false
    end
  end
end
