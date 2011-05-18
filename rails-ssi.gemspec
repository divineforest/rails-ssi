# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails-ssi/version"

Gem::Specification.new do |s|
  s.name        = "rails-ssi"
  s.version     = RailsSsi::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["divineforest"]
  s.email       = ["technoforest@gmail.com"]
  s.homepage    = "http://github.com/divineforest/rails-ssi"
  s.summary     = %q{SSI in your Rails app}
  s.description = %q{Helpers for SSI tags in your Rails app}

  s.rubyforge_project = "rails-ssi"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
