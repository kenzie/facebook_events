# FacebookEvents

FacebookEvents pulls Event data from the Facebook graph for a particular user or page id. Events are returned as an array.

## Setup

[Register your App on Facebook](https://developers.facebook.com/apps)

Define your environment variables for Facebook APP ID (API Key) and APP Secret:

```
FacebookEvents::FACEBOOK_APP_ID = '###'
FacebookEvents::FACEBOOK_SECRET = '###'
```

## Use

```
events = FacebookEvents.new(facebook_id)
events.list
events.list.first
```
Returns an array of Events with attributes for facebook_id, name, start_time, end_time, location, description, updated_time.

### Dependencies

Requires the [MiniFB gem](https://github.com/appoxy/mini_fb).