class FacebookEvents

  require 'mini_fb'
  require "facebook_events/version"

  attr_reader :facebook_id

  def initialize(facebook_id)
    @facebook_id = facebook_id
    @auth_token  = get_auth_token
  end

  def self.list(facebook_id)
    facebook_resource = new(facebook_id)
    events = []
    event_list = facebook_resource.get_events_list(facebook_id)
    event_list.each do |event|
      events << facebook_resource.get_event_details(event.id)
    end
    events
  end

  def get_events_list(facebook_id)
    MiniFB.get(@auth_token, @facebook_id, :type => 'events').data
  end

  def get_event_details(facebook_id)
    MiniFB.get(@auth_token, facebook_id).to_hash
  end

  private

  def get_auth_token
    MiniFB.authenticate_as_app(FACEBOOK_APP_ID, FACEBOOK_SECRET)['access_token']
  end

end