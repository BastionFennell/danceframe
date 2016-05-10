class Event < ActiveRecord::Base
  belongs_to :cover, dependent: :destroy
  has_many :dance_frames
end
