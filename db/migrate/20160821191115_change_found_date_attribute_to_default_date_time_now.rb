class ChangeFoundDateAttributeToDefaultDateTimeNow < ActiveRecord::Migration
  def change
    change_column :jobs, :found_date, :datetime, default: DateTime.now
  end
end
