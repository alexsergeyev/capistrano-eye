# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'capistrano-eye'
  gem.version       = '0.0.1'
  gem.authors       = ['Alex Sergeyev']
  gem.email         = ['alex.sergeyev@gmail.com']
  gem.summary       = %q(Capistrano eye tasks)
  gem.description   = %q(Capistrano tasks for manage and monitor processes by eye)
  gem.homepage      = 'http://github.com/alexsergeyev/capistrano-eye'
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0")
  gem.require_paths = ['lib']

  gem.add_dependency 'capistrano', '~> 3.1'
  gem.add_dependency 'sshkit', '~> 1.2'
end
