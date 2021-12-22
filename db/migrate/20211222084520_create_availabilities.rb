class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.references :room, foreign_key: true
      t.references :hourly, foreign_key: true

      t.timestamps
    end
  end
end
