class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :nama
      t.string :nidn
      t.string :education_id
      t.string :functional_allowance_id
      t.string :structural_allowance_id
      t.string :special_allowance_id

      t.timestamps null: false
    end
  end
end
