class AddAirtimeToShows < ActiveRecord::Migration
  def self.up
    add_column :shows, :airtime, :string
  end

  def self.down
    remove_column :shows, :airtime
  end
end
