class ChangeSalaryandWageTo13Precision < ActiveRecord::Migration
  def change
    change_column :jobs, :hourly_wage, :decimal, precision: 13, scale: 2
    change_column :jobs, :salary, :decimal, precision: 13, scale: 2
  end
end
