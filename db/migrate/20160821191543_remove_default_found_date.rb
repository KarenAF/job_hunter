class RemoveDefaultFoundDate < ActiveRecord::Migration
  def change
    change_column :jobs, :found_date, :datetime
  end
end
