Gem::Specification.new do |spec|
  spec.name          = 'onewheel-google'
  spec.version       = '1.0.4'
  spec.authors       = ['Andrew Kreps']
  spec.email         = ['andrew.kreps@gmail.com']
  spec.description   = 'An interface of Google Custom Search Engine for searching.'
  spec.summary       = 'An abstracted way to access CSE.'
  spec.homepage      = 'https://github.com/onewheelskyward/onewheel-google'
  spec.license       = 'MIT'

  spec.files         = ['lib/onewheel-google.rb']

  spec.required_ruby_version = '>= 2.0'

  spec.add_runtime_dependency 'rest-client', '~> 2'
  spec.add_runtime_dependency 'addressable', '~> 2.4'

  spec.add_development_dependency 'bundler', '~> 2'
  spec.add_development_dependency 'rake', '~> 13'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'simplecov', '~> 0'
  spec.add_development_dependency 'coveralls', '~> 0'
end
