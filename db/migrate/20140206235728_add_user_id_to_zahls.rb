class AddUserIdToZahls < ActiveRecord::Migration
  def change
    add_column :zahls, :user_id, :integer
  end
end
