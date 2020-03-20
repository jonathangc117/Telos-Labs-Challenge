class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :description
      t.date :day
      t.string :duration
      t.references :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
