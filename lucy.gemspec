# coding: utf-8
require_relative './app/version'

Gem::Specification.new do |spec|
  spec.name          = 'mattivdweem-lucy'
  spec.version       = MattivdWeem::Lucy::VERSION
  spec.authors       = ['Matti van de Weem']
  spec.email         = ['mvdweem@gmail.com']
  spec.description   = 'Your pa'
  spec.summary       = 'My pa'
  spec.homepage      = 'http://mattivandeweem.nl'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0") 
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['app']

  spec.add_dependency 'andand'
  spec.add_dependency 'trollop'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'cucumber', '>= 1.3.8'
  spec.add_development_dependency 'rake'
end
