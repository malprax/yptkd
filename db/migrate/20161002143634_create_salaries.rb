class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.string :form_number
      t.string :period_id
      t.string :lecture_id
      t.integer :tax1_id
      t.integer :tax2_id
      t.integer :tax3_id
      t.float :total

      t.timestamps null: false
    end
  end
end
