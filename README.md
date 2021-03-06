# FacebookEvents

FacebookEvents pulls Event data from the Facebook graph for a particular user or page id. Events are returned as an array of hashes.

## Setup

[Register your App on Facebook](https://developers.facebook.com/apps)

Define your constants for Facebook APP ID (API Key) and APP Secret:

```
FacebookEvents::FACEBOOK_APP_ID = '###'
FacebookEvents::FACEBOOK_SECRET = '###'
```

## Use

```
events = FacebookEvents.list(facebook_id)
```
Returns an array of hashes – with attributes for id, name, start_time, end_time, location, description, updated_time.

### Dependencies

Requires the [MiniFB gem](https://github.com/appoxy/mini_fb).