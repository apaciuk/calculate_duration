# calciulate_duration

Demo app for ActiveSupport::Duration methods.
Serializers from ActiveRecord_AttriubuteMethods
w custom coder class

$ rails db:create db:migrate
$ rails db:seed

Console - without custom_coder class

> c = Chapter.first
> c
> ActiveSupport::Duration.build c.duration
> => 10 seconds
> duration = \_
> => 10 seconds
> duration.class
> => ActiveSupport::Duration
> duration.to_s
> => "10"
> duration.inspect
> => "10 seconds"

Console with custom_coder class

> c.duration
> => 10 seconds
> c.duration.inspect
> => "10 seconds"

Once set up, to use in any other model needing this type of serialization, just add the line

serialize :duration, DurationCoder

in the model.

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
