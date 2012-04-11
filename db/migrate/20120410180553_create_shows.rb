class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.string :name
      t.string :description
	  t.string :language
	  t.string :network
	  t.integer :minutes
	  t.decimal :rating
	  t.integer :comments
	  t.integer :followers
	  t.string :genre

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end
