class CreateTimers < ActiveRecord::Migration[5.0]
  def change
    create_table :timers do |t|
      t.time :time_entry
      t.text :description
      t.references :job, foreign_key: true

      t.timestamps
    end
  end
end
