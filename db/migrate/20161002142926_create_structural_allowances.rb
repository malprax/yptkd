class CreateStructuralAllowances < ActiveRecord::Migration
  def change
    create_table :structural_allowances do |t|
      t.string :nama
      t.float :satuan

      t.timestamps null: false
    end
  end
end
