# == Schema Information
#
# Table name: preferences
#
#  id                        :bigint           not null, primary key
#  last_mdx_meteotest_update :datetime
#  map_url                   :string(255)      default("winter_map"), not null
#  request_timeout           :integer          default(15)
#  show_snow_panel           :boolean          default(TRUE), not null
#  summer_map                :string(255)      default("https://winter.intermaps.com/bosco_gurin_hike"), not null
#  winter_map                :string(255)      default("https://winter.intermaps.com/bosco_gurin"), not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
require 'rails_helper'

RSpec.describe Preference, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
