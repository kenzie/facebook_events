class FacebookEvents

  require 'mini_fb'
  require 'facebook_events/event'
  require "facebook_events/version"

  # Get events for a Facebook page or user by id.
  # Requires environment variables for Facebook APP ID and APP Secret:
  #   FacebookEvents::FACEBOOK_APP_ID = ...
  #   FacebookEvents::FACEBOOK_SECRET = ...

  attr_reader :facebook_id, :auth_token, :list

  def initialize(facebook_id)
    @facebook_id = facebook_id
    @auth_token  = get_auth_token
    @list        = get_events
  end

  private

  def get_auth_token
    MiniFB.authenticate_as_app(FACEBOOK_APP_ID, FACEBOOK_SECRET)['access_token']
  end

  def get_events
    list = MiniFB.get(@auth_token, @facebook_id, :type => 'events').data
    list.map do |e|
      FacebookEvents::Event.new(MiniFB.get(@auth_token, e.id))
    end
  end

end