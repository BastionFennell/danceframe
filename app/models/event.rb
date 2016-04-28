class Event < ActiveRecord::Base
  belongs_to :cover, dependent: :destroy
end
