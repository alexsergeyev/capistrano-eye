# Capistrano::Eye

Wrap all application processes by [eye]('https://github.com/kostya/eye') monitoring tool.

## Installation

Add this line to your Gemfile:

```ruby
gem 'capistrano-eye'
```

And then run:

```bash
$ bundle
```

## Usage

Add this line to your `Capfile` and `deploy:restart` will be setup to automatically run after `:publishing` is complete:

```ruby
require 'capistrano/eye'
```

The following tasks are available: `eye:load`, `eye:start`, `eye:stop`, `eye:quit`, `eye:restart`, `eye:info`

If you want the task to run at a different point in your deployment, require `capistrano/eye/no_hook` instead of `capistrano/eye` and then add your own hook in `config/deploy.rb`.

``` ruby
# Capfile
require 'capistrano/eye/no_hook'

# config/deploy.rb
after :some_other_task, :'eye:restart'
```

## Configuration
    set :eye_application # capistrano application name by default
    set :eye_config,     # ./config/eye_application.eye

## Contributing

1. Fork it ( https://github.com/[my-github-username]/capistrano-eye/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
