$:.push File.expand_path("../lib", __FILE__)
require "pantry/chef/version"

Gem::Specification.new do |s|
  s.name     = "pantry-chef"
  s.version  = Pantry::Chef::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors  = ["Collective Idea", "Jason Roelofs"]
  s.email    = ["code@collectiveidea.com", "jasongroelofs@gmail.com"]
  s.license  = "MIT"
  s.homepage = "http://pantryops.org/chef"

  s.summary     = "Chef Plugin for Pantry"
  s.description = <<-EOS
    Add Chef support to a Pantry network.
  EOS

  s.required_ruby_version = ">= 2.0.0"

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- test/*`.split("\n")
  s.require_path = "lib"
  s.bindir       = "bin"

  s.add_runtime_dependency "pantry", "~> 0.1",   ">= 0.1.0"
  s.add_runtime_dependency "chef",   "~> 11.10", ">= 11.10.0"
end
