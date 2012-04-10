class CreateShows < ActiveRecord::Migration
  def self.up
    create_table :shows do |t|
      t.string :name
      t.string :description
	  t.string :network
	  t.integer :comments
	  t.integer :followers

      t.timestamps
    end
  end

  def self.down
    drop_table :shows
  end
end
