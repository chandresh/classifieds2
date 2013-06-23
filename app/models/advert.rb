class Advert < ActiveRecord::Base
  attr_accessible :description, :name

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history]

end
