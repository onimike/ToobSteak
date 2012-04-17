class AddAirdayToShows < ActiveRecord::Migration
  def self.up
    add_column :shows, :airday, :string
  end

  def self.down
    remove_column :shows, :airday
  end
end
