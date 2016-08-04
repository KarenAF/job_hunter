class AddUserIdToNetworkings < ActiveRecord::Migration
  def change
    add_column :networkings, :user_id, :integer
  end
end
