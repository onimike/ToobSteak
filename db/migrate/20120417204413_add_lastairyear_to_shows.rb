class AddLastairyearToShows < ActiveRecord::Migration
  def self.up
    add_column :shows, :lastairyear, :string
  end

  def self.down
    remove_column :shows, :lastairyear
  end
end
