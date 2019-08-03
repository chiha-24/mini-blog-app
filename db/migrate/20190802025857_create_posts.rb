class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :text
      t.string :title
      t.string :user_id
      t.timestamps
    end
  end
end
