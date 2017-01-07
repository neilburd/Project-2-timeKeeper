class FixJobsModelGetRidOfTime < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :estimate, :time
  end
end
