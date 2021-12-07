class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :speciality
      t.string :degree
      t.boolean :responsable, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
