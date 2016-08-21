class RemoveDefaultFoundDateAgain < ActiveRecord::Migration
  def change
    change_column_default :jobs, :found_date, nil
  end
end
