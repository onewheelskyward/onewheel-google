Gem::Specification.new do |spec|
  spec.name          = 'onewheel-google'
  spec.version       = '1.0.1'
  spec.authors       = ['Andrew Kreps']
  spec.email         = ['andrew.kreps@gmail.com']
  spec.description   = 'An interface of Google Custom Search Engine for searching.'
  spec.summary       = 'An abstracted way to access CSE.'
  spec.homepage      = 'https://github.com/onewheelskyward/onewheel-google'
  spec.license       = 'MIT'

  spec.files         = ['lib/onewheel-google.rb']

  spec.required_ruby_version = '>= 2.1'

  spec.add_runtime_dependency 'rest-client', '~> 1.8'
  spec.add_runtime_dependency 'addressable', '~> 2.4'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake', '~> 10.4'
  spec.add_development_dependency 'rspec', '~> 3.3'
  spec.add_development_dependency 'simplecov', '~> 0.10'
  spec.add_development_dependency 'coveralls', '~> 0.8'
end
