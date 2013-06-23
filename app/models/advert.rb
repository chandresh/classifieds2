class Advert < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :user
  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

end
