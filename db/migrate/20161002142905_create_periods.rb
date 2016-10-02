class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :nama

      t.timestamps null: false
    end
  end
end
