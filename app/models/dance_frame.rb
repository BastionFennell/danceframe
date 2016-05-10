class DanceFrame < ActiveRecord::Base
  belongs_to :pre_event
  belongs_to :event
  belongs_to :user


  def event_id=(id)
      self.event = Event.find_by_id(id)
  end

  def user_id=(id)
      self.user = User.find_by_id(id)
  end

  def pre_event_id=(id)
      self.pre_event = PreEvent.find_by_id(id)
  end
end
