class CreateMicroposts < ActiveRecord::Migration
  def self.up
    create_table :microposts do |t|
      t.string :content
      t.integer :show_id
      t.integer :user_id

      t.timestamps
    end
    add_index :microposts, [:show_id, :user_id :created_at]
  end

  def self.down
    drop_table :microposts
  end
end
