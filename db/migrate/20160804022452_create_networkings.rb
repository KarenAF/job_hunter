class CreateNetworkings < ActiveRecord::Migration
  def change
    create_table :networkings do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_contacted
      t.string :email
      t.integer :job_id
      t.boolean :emailed
      t.boolean :phoned
      t.boolean :letter_sent
      t.text :notes

      t.timestamps null: false
    end
  end
end
