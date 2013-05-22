# Spree Email to Friend

[![Build Status](https://travis-ci.org/futhr/spree_email_to_friend.png)](https://travis-ci.org/futhr/spree_email_to_friend)
[![Dependency Status](https://gemnasium.com/futhr/spree_email_to_friend.png)](https://gemnasium.com/futhr/spree_email_to_friend)
[![Coverage Status](https://coveralls.io/repos/futhr/spree_email_to_friend/badge.png?branch=master)](https://coveralls.io/r/futhr/spree_email_to_friend)

**NOTE: This branch is WIP for Spree 2.0.0.beta. If you fork it remember to change .travis.yml notifications and links in above build statuses due to they point to futhr/spree_email_to_friend master branch.**

The Spree Email to Friend extension enables you to send the product reference to your friend via email.

## Installation

1. Add the following to your Gemfile
```ruby
gem 'spree_email_to_friend', github: 'spree/spree_email_to_friend.git'
```

2. Run `bundle install`

## Development

* Fork the repo
* Clone your repo
* Run `bundle`
* Run `bundle exec rake test_app` to create the test application in `spec/test_app`
* Make your changes
* Ensure specs pass by running `bundle exec rake`
* Submit your pull request

Copyright (c) 2013 Jorge Calás Lozano, Roman Smirnov, Trung Lê, released under the New BSD License
