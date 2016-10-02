class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.string :form_number
      t.string :period_id
      t.string :lecture_id
      t.float :tax
      t.float :regular_gathering
      t.float :total

      t.timestamps null: false
    end
  end
end
