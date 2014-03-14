# Connect the Dots

Based off og the sample application for
[*Ruby on Rails Tutorial: Learn Web Development with Rails*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/). It was modified for the StartUp Weekend Oakland: Black Male Achievement Hackathon.

    $ cd /tmp
    $ git clone https://github.com/railstutorial/sample_app_rails_4.git
    $ cd sample_app_rails_4
    $ cp config/database.yml.example config/database.yml
    $ bundle install
    $ bundle exec rake db:migrate
    $ bundle exec rake db:test:prepare
    $ bundle exec rspec spec/
