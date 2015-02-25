# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','agent','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'agent-s'
  s.version = Agent::VERSION
  s.author = 'Thomas Wilkinson'
  s.email = 'twilkinson573@gmail.com'
  s.homepage = 'http://github.com/twilkinson573/agent'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Allows users to interact with the Energy Transition Model 
               (et-model.com) through the terminal'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.bindir = 'bin'
  s.executables << 'agent'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.12.3')
end
