# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "table_gem"
  s.version = "0.0.1"

  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Blaine Schanfeldt"]
  s.email       = ["gem@blaines.me"]
  s.homepage    = "http://github.com/blaines/table-gem"
  s.summary     = "Code Challenge"
  s.description = s.summary

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end