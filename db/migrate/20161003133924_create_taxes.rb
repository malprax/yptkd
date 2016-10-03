class CreateTaxes < ActiveRecord::Migration
  def change
    create_table :taxes do |t|
      t.string :nama
      t.float :satuan

      t.timestamps null: false
    end
  end
end
