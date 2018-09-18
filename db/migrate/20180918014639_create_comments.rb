class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :content
      t.integer :post_id

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
