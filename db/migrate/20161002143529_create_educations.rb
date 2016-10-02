class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :nama
      t.float :satuan

      t.timestamps null: false
    end
  end
end
