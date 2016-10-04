class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :bulan
      t.string :tahun

      t.timestamps null: false
    end
  end
end
