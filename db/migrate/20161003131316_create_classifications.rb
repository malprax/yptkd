class CreateClassifications < ActiveRecord::Migration
  def change
    create_table :classifications do |t|
      t.string :nama
      t.float :satuan

      t.timestamps null: false
    end
  end
end
