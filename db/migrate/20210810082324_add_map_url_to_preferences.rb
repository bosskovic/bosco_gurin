class AddMapUrlToPreferences < ActiveRecord::Migration[6.0]
  def change
    add_column :preferences, :summer_map, :string, null: false, default: 'https://winter.intermaps.com/bosco_gurin_hike'
    add_column :preferences, :winter_map, :string, null: false, default: 'https://winter.intermaps.com/bosco_gurin'
    add_column :preferences, :map_url, :string, null: false, default: 'winter_map'
  end
end
