begin
  require 'rspec/core/rake_task'
rescue LoadError
  fail 'Unable to load RSpec rake tasks - have you run via \'bundle exec rake spec\' ?'
rescue exception
  fail 'Cannot run rspec rake task - #{exception.message}'
end

desc 'verify the simple_send_keys module'
RSpec::Core::RakeTask.new
