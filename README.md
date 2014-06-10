# Capistrano::Eye

Wrap all application processes by [eye]('https://github.com/kostya/eye') monitoring tool.

## Installation


    gem 'capistrano-eye', github: 'alexsergeyev/capistrano-eye'

Enable it in Capfile

    require 'capistrano/eye'


## Configuration
    set :eye_application # capistrano application name by default
    set :eye_config,     # ./config/eye_application.eye

## Contributing

1. Fork it ( https://github.com/[my-github-username]/capistrano-eye/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
