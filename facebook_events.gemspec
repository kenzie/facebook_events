# -*- encoding: utf-8 -*-
require File.expand_path('../lib/facebook_events/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Kenzie Campbell"]
  gem.email         = ["kenzie@route19.com"]
  gem.summary       = "Fetch an array of Facebook Events by id."
  gem.description   = "Given a Facebook page or user id, this gem will return an array of its events."
  gem.homepage      = "https://github.com/kenzie/facebook_events"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "facebook_events"
  gem.require_paths = ["lib"]
  gem.version       = FacebookEvents::VERSION

  gem.add_dependency('mini_fb', '>= 1.1.7')
  gem.add_development_dependency('rspec')
  gem.add_development_dependency('guard-rspec')
end
