Gem::Specification.new do |s|
  # info
  s.platform    = Gem::Platform::RUBY
  s.name        = 'simple-send-keys'
  s.version     = '0.0.2'
  s.authors     = ['Leif Eriksen']
  s.date        = '2015-07-12'
  s.license     = 'MIT'
  s.description = 'fork of send-keys with less assumptions, while we wait for capybara-2.5.x.'
  s.email       = 'leif.eriksen.au@gmail.com'
  s.homepage    = 'http://github.com/leriksen/simple-send-keys'
  s.summary     = 'Simulate key presses in your capybara tests'

  # rdoc
  s.extra_rdoc_files = [
    'Readme.md'
  ]
  s.rdoc_options     = ['--charset=UTF-8']

  # contents
  s.files = [
     'lib/simple_send_keys.rb',
     'Readme.md',
     'simple-send-keys.gemspec'
  ]

  # requires
  s.require_paths    = ['lib']

  # dependencies
  s.add_runtime_dependency('capybara', '>= 2.4.4', '<2.5.0')

  s.add_development_dependency('rake' , '~> 10.4', '>=10.4.2')
  s.add_development_dependency('rspec', '~> 3.3' , '>=3.3.0' )
  s.add_development_dependency('coveralls', '~> 0.8' , '>=0.8.2' )

  s.add_dependency('bundler', '>= 1.3.0', '< 2.0')

  # tools
  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'
end
