# == Schema Information
#
# Table name: preferences
#
#  id                        :bigint           not null, primary key
#  last_mdx_meteotest_update :datetime
#  map_url                   :string(255)      default("winter_map"), not null
#  request_timeout           :integer          default(15)
#  summer_map                :string(255)      default("https://winter.intermaps.com/bosco_gurin_hike"), not null
#  winter_map                :string(255)      default("https://winter.intermaps.com/bosco_gurin"), not null
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#
class PreferenceSerializer < ActiveModel::Serializer
  attributes :request_timeout, :last_mdx_meteotest_update
  attribute :languages do
    object.languages.pluck :locale
  end
  attribute :map_url do
    object.send object.map_url.to_sym
  end
end
