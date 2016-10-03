class CreatePerformanceAllowances < ActiveRecord::Migration
  def change
    create_table :performance_allowances do |t|
      t.string :range_mahasiswa
      t.string :satuan

      t.timestamps null: false
    end
  end
end
