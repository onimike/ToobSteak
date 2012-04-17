class AddSeriesidToShows < ActiveRecord::Migration
  def self.up
    add_column :shows, :seriesid, :string
  end

  def self.down
    remove_column :shows, :seriesid
  end
end
