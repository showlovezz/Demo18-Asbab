class RemoveUserIdToPosts < ActiveRecord::Migration[5.2]
  def change
  	remove_column :posts, :user_id
  end
end
