class ChangeingTheTimerModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :timers, :time_entry, :time
    add_column :timers, :hours, :integer
    add_column :timers, :minutes, :integer
  end
end
