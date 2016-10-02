class CreateFunctionalAllowances < ActiveRecord::Migration
  def change
    create_table :functional_allowances do |t|
      t.string :nama
      t.float :satuan

      t.timestamps null: false
    end
  end
end
