class CreateHourlies < ActiveRecord::Migration[5.2]
  def change
    create_table :hourlies do |t|
      t.string :day
      t.string :time_slot

      t.timestamps
    end
  end
end
