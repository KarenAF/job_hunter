class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :company
      t.string :position
      t.string :source
      t.string :status
      t.datetime :found_date
      t.text :listing_url
      t.string :job_type
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :company_website
      t.decimal :hourly_wage, :decimal, precision: 9, scale: 2
      t.decimal :salary, :decimal, precision: 9, scale: 2
      t.datetime :applied_date
      t.datetime :interview_date
      t.datetime :offer_date
      t.integer :rating
      t.text :notes

      t.timestamps null: false
    end
  end
end
