class Event < ActiveRecord::Base
  belongs_to :cover, dependent: :destroy
  has_many :danceframe
end
