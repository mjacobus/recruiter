Recruiter
----------

Recruiter is a Rails Engine for adding job posting functionality to a Rails APP. It is intended to be reusable code for
websites such as [Ruby Jobs Brazil](http://rubyjobsbrazil.com.br)

[![Build Status](https://travis-ci.org/mjacobus/recruiter.png?branch=master)](https://travis-ci.org/mjacobus/recruiter)
[![Coverage Status](https://coveralls.io/repos/mjacobus/recruiter/badge.png)](https://coveralls.io/r/mjacobus/recruiter)
[![Code Climate](https://codeclimate.com/github/mjacobus/recruiter.png)](https://codeclimate.com/github/mjacobus/recruiter)
[![Dependency Status](https://gemnasium.com/mjacobus/recruiter.png)](https://gemnasium.com/mjacobus/recruiter)
[![Gem Version](https://badge.fury.io/rb/recruiter.png)](http://badge.fury.io/rb/recruiter)

Notice
--------------
This project is under development and most of the information in this guide is only
a specification rather than functional configuration. 

## Instalation

Add this line to your application's Gemfile:

    gem 'recruiter'

And then execute:

    $ bundle
    $ rails g recruiter:install
    $ rake recruiter:install:migrations
    $ rake recruiter:install:views # optional. Copy erb files
    $ rake db:migrate

This will create the following files:

- ```app/initializers/recruiter.rb```
- ```config/locales/recruiter.en.yml```
- ```config/locales/recruiter.pt-BR.yml```

## Configuration

You can customize recruiter behavior by editing the ```config/initializer/recruiter.rb```

### Mounting the engine

```ruby
mount Recruiter::Engine, at: 'human-resources'
```

Now all you need is to go to /human-resources path in your application.

## TODO

- [Next features](https://github.com/mjacobus/recruiter/issues?labels=enhancement&page=1&state=open)

## Authors

- [Marcelo Jacobus](https://github.com/mjacobus)


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

** Do not forget to write tests**
