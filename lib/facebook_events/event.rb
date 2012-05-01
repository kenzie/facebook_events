class FacebookEvents::Event

  attr_reader :facebook_id, :name, :start_time, :end_time, :location, :description, :updated_time

  def initialize(event)
    @facebook_id      = event.id
    @name             = event.name
    @start_time       = event.start_time
    @end_time         = event.end_time
    @location         = event.location
    @description      = event.description
    @updated_time     = event.updated_time
  end

end