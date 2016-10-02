class CreateBasicSalaries < ActiveRecord::Migration
  def change
    create_table :basic_salaries do |t|
      t.string :golongan
      t.float :satuan

      t.timestamps null: false
    end
  end
end
