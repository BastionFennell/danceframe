class DanceFrame < ActiveRecord::Base
  belongs_to :PreEvent
  belongs_to :Event
  belongs_to :User
end
