class RemoveDecimalColumnFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :decimal, :decimal
  end
end
