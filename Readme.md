Purpose
=======

A Rails app for testing that an environment is able to set up a database,
recent version of Ruby, environment variables, and then host the app.

Setup
-----

After getting the code, make sure you have a recent version of Ruby (2.2.x or 2.3.x as of this time)

```
$ ruby -v
```

Make sure you have bundler (manages dependencies)

```
$ gem install bundler
```

Then install the dependencies using bundler

```
$ bundle install
```

Make sure Postgresql is running and then setup the database:

```
$ bundle exec rake db:create   # First time only
$ bundle exec rake db:migrate  # For each deploy that modifies the db
$ bundle exec rake db:seed     # For each deploy, in case it needs to add seed data
```

Set an environment variable in whichever way is appropriate for the environment.
There will be a test page asserting that it is set.

```
export FAVORITE_NUMBER=twelve # bash syntax
```

Start the server.

```
$ rails server -h # to see a list of options like setting the pid, the ip, running as a daemon
$ rails server    # to start it
```

Visit the root page in the browser, it should tell you that there is 1 user named `"Josh"`,
which verifies the database works as expected, and that there is an environment variable
named `"FAVORITE_NUMBER"`, which has a value of `"twelve"`, verifying that the environment
variables have been set up correctly.
