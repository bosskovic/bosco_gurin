class AddShowSnowPanelToPreferences < ActiveRecord::Migration[6.0]
  def change
    add_column :preferences, :show_snow_panel, :boolean, null: false, default: true
  end
end
