**ActionCable chat example:**

https://www.pluralsight.com/guides/ruby-ruby-on-rails/creating-a-chat-using-rails-action-cable

**Addendum:**

1. Use starter app at [https://github.com/johnnylaw/chat-starter.git](https://github.com/johnnylaw/chat-starter.git)
2. Near the beginning when you generate the Message model, you’ll notice that there is already a message.rb. Say “n” (NO) to overwriting it, as you may want it later if you get to last step.
3. Start the app by typing “rails server —binding=0.0.0.0" so that people can hit your app through the wifi. Then run ifconfig to find your local IP. Have others hit the app at http://XXX.XXX.XX.XX:3000
4. Remove “get ‘rooms/show’” from routes.rb after running “rails g controller rooms show”
5. Once you start rendering your chats, notice how janky the appearance of chats is. Try changing rendering to include ‘&lt;blockquote&gt;’ tags. I’ve included some styling for that.
6. Skip the MessageBroadCastJob part and instead simply add the Message.create! to what’s already there in RoomChannel#speak. It would be good in practice to put the broadcasting off to an async job, but skip it for now for the sake of time. Also skip the after_create_commit part, as that’s part of the same process.
7. **Extra if time permits**: Get to authentication of socket connection.
    1. Uncomment the code in ./app/channels/application_cable/connection.rb. This code combined with the code in ./config/initializers/warden_hooks.rb will enforce that only logged-in users have access to the socket (See http://www.rubytutorial.io/actioncable-devise-authentication if you are interested)
    2. Uncomment the line in ./app/controllers/application_controller.rb that enforces losing
