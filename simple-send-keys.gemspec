Gem::Specification.new do |s|
  # info
  s.platform    = Gem::Platform::RUBY
  s.name        = %q{simple-send-keys}
  s.version     = "0.0.1"
  s.authors     = ["Leif Eriksen"]
  s.date        = %q{2015-07-12}
  s.license     = "MIT"
  s.description = %q{fork of send-keys with less assumptions, while we wait for capybara-2.5.x.}
  s.email       = %q{leif.eriksen.au@gmail.com}
  s.homepage    = %q{http://github.com/leriksen/simple-send-keys}
  s.summary     = %q{Simulate key presses in your capybara tests}

  # rdoc
  s.extra_rdoc_files = [
    "Readme.md"
  ]
  s.rdoc_options     = ["--charset=UTF-8"]

  # contents
  s.files = [
     "lib/simple_send_keys.rb",
     "Readme.md",
     "simple-send-keys.gemspec"
  ]

  # requires
  s.require_paths    = ["lib"]

  # dependencies
  s.add_runtime_dependency("capybara", ">= 0", "<2.5.0")

  s.add_development_dependency("rake" , "~>0")
  s.add_development_dependency("rspec", "~>0")

  s.add_dependency('bundler', '>= 1.3.0', '< 2.0')

  # tools
  s.required_ruby_version     = '>= 1.9.3'
  s.required_rubygems_version = '>= 1.8.11'
end
