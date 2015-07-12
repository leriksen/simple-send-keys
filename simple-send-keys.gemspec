Gem::Specification.new do |s|
  s.name = %q{simple-send-keys}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Leif Eriksen"]
  s.date = %q{2015-07-12}
  s.description = %q{fork of send-keys with less assumptions, while we wait for capybara-2.5.x.}
  s.email = %q{leif.eriksen.au@gmail.com}
  s.extra_rdoc_files = [
    "Readme.md"
  ]
  s.files = [
     "lib/simple_send_keys.rb",
     "Readme.md",
     "simple-send-keys.gemspec"
  ]
  s.homepage = %q{http://github.com/leriksen/simple-send-keys}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{2.1.9}
  s.summary = %q{Simulate key presses in your capybara tests}

  s.add_dependency("capybara", [">= 0", "<2.5.0"])
  s.add_development_dependency("rake", [">=0"])
  s.add_development_dependency("rspec", [">=0"])
end

